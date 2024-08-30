//
//  HomeViewModel.swift
//  CryptoApp
//
//  Created by Chau Hoang Khoa on 7/09/2024.
//

import Foundation
import Combine

class HomeViewModel: ObservableObject {
    
    @Published var allCoins: [CoinModel] = []
    @Published var portfolioCoins: [CoinModel] = []
    
    @Published var searchText: String = ""
    
    private let dataService = CoinDataService()
    private var cancellable = Set<AnyCancellable>()
    
    init() {
        addSubscriber()
    }
    
    /// Subscribed to publisher in DataServer allCoins ($)
    func addSubscriber() {
        dataService.$allCoins
            .sink { [weak self] returnValue in
                self?.allCoins = returnValue
            }.store(in: &cancellable)
    }
}
