//
//  DetailView.swift
//  CryptoApp
//
//  Created by Chau Hoang Khoa on 15/09/2024.
//

import SwiftUI

struct DetailView: View {
    
    @StateObject private var vm: DetailViewModel
    
    /// inject CoinModel
    init(coin: CoinModel) {
        _vm = StateObject(wrappedValue: DetailViewModel(coin: coin))
        //print("[🔥] Coin downloaded: \(coin.name)")
    }
    
    var body: some View {
        VStack {
           
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




