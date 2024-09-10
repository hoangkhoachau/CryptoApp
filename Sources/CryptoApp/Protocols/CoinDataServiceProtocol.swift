//
//  CoinDataServiceProtocol.swift
//  CryptoApp
//
//  Created by Chau Hoang Khoa on 18/09/2024.
//

import Foundation
import Combine

protocol CoinDataServiceProtocol {
    
    var publisher: Published<[CoinModel]>.Publisher { get }
    
    var coinSubscription: AnyCancellable?           { get }
    
    func getCoins()
}
