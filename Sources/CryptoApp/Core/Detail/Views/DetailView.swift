//
//  DetailView.swift
//  CryptoApp
//
//  Created by Chau Hoang Khoa on 15/09/2024.
//

import SwiftUI

struct DetailView: View {
    
    let coin: CoinModel
    
    init(coin: CoinModel) {
        self.coin = coin
        print("[🔥] Coin downloaded: \(coin.name)")
    }
    var body: some View {
        VStack {
            Text(coin.name)
            XMarkButton()
            
        }
            .navigationBarBackButtonHidden()
    }
}

//                🔱
struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(coin: dev.coin)
    }
}




