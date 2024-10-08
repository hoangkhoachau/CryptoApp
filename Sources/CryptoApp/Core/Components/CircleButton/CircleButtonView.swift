//
//  CircleButtonView.swift
//  CryptoApp
//
//  Created by Chau Hoang Khoa on 6/09/2024.
//

import SwiftUI

struct CircleButtonView: View {
    
    let iconName: String
    
    var body: some View {
        Image(systemName: iconName)
            .font(.headline)
            .foregroundColor(Color.theme.accent)
            .frame(width: 50, height: 50)
            .background(
            Circle()
                .foregroundColor(Color.theme.background)
            )
            .shadow(color: Color.theme.accent.opacity(0.3),
                    radius: 10)
            .padding(.all, 7)
    }
}

//                     🔱
struct CircleButtonView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            
            CircleButtonView(iconName: "info")
                .padding()
                .previewLayout(.sizeThatFits)
            
            CircleButtonView(iconName: "plus")
                .padding()
                .previewLayout(.sizeThatFits)
                .preferredColorScheme(.dark)
            
        }
    }
}
