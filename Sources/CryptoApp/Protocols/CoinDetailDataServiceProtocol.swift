//
//  CoinDetailDataServiceProtocol.swift
//  CryptoApp
//
//  Created by Chau Hoang Khoa on 18/09/2024.
//

import Foundation
import Combine

protocol CoinDetailDataServiceProtocol {
    
    var publisher: Published<CoinDetailsModel?>.Publisher { get }
    
    var coinDetailSubscription: AnyCancellable? { get }
    var coin: CoinModel { get }
    
    func getCoinDetails()
    
}
