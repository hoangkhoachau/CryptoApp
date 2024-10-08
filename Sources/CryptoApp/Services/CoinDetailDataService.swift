//
//  DetailDataService.swift
//  CryptoApp
//
//  Created by Chau Hoang Khoa on 15/09/2024.
//

import Foundation
import Combine

final class CoinDetailDataService: CoinDetailDataServiceProtocol {
    
    @Published var coinDetails: CoinDetailsModel? = nil
    
    var publisher: Published<CoinDetailsModel?>.Publisher { $coinDetails }
    
    /// Single subscriber
    var coinDetailSubscription: AnyCancellable?
    let coin: CoinModel
    
    init(coin: CoinModel) {
        self.coin = coin
        getCoinDetails()
    }
    
    func getCoinDetails() {
        /// URL CoinGecko
        guard let url = URL(string:"https://api.coingecko.com/api/v3/coins/\(coin.id)?localization=false&tickers=false&market_data=false&community_data=false&developer_data=false&sparkline=false") else {
            return
        }
        coinDetailSubscription = NetworkingManager.download(url: url)
            .decode(type: CoinDetailsModel.self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion:(NetworkingManager.handleCompletion(_:)), receiveValue: { [weak self] returnCoinDetails in
                self?.coinDetails = returnCoinDetails
                self?.coinDetailSubscription?.cancel()
            })
    }
}
