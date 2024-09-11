//
//  CryptoAppApp.swift
//  CryptoApp
//
//  Created by Chau Hoang Khoa on 5/09/2024.
//

import SwiftUI

@main
struct CryptoAppApp: App {
    
    var body: some Scene {
        WindowGroup {
            
            /// Service
            let coinDataService = CoinDataService()
            
            /// MockService
            //let coinDataService = MockCoinDataService()
            
            
            Main(vm: coinDataService )
    
        }
    }
}
