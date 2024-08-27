//
//  ContentView.swift
//  CryptoApp
//
//  Created by Chau Hoang Khoa on 5/09/2024.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack {
            
            Text("Hello SwiftUi")
                .foregroundColor(Color.theme.accent)
            
            Text("Hello SwiftUi")
                .foregroundColor(Color.theme.SecondaryText)
            
            Text("Hello SwiftUi")
                .foregroundColor(Color.theme.green)
            
            Text("Hello SwiftUi")
                .foregroundColor(Color.theme.red)
            

        }
        .font(.system(size: 35) .bold())
        .background{ Color.theme.background }
    }
}

//                 🔱
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
