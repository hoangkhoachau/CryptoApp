//
//  MarketDataService.swift
//  CryptoApp
//
//  Created by Chau Hoang Khoa on 10/09/2024.
//

import Foundation

import Foundation
import Combine

final class MarketDataService {
    
    @Published var marketData: MarketDataModel? = nil
    
    /// Single subscriber
    var marketDataSubscription: AnyCancellable?
    
    init() {
        getData()
    }
    
    func getData() {
        /// URL CoinGecko
        guard let url = URL(string: "https://api.coingecko.com/api/v3/global" ) else {
            return
        }
        marketDataSubscription = NetworkingManager.download(url: url)
            .decode(type: GlobalData.self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion:(NetworkingManager.handleCompletion(_:)), receiveValue: { [weak self] returnGlobalData in
                
                /// MarketDataModel first consist from GlobalData
                self?.marketData = returnGlobalData.data
                self?.marketDataSubscription?.cancel()
            })
    }
}
