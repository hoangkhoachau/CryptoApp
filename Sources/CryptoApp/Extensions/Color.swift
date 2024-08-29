//
//  Color.swift
//  CryptoApp
//
//  Created by Chau Hoang Khoa on 5/09/2024.
//

import Foundation
import SwiftUI

struct ColorTheme {
    
    let accent = Color("AccentColor")
    let background = Color("BackgroundColor")
    let green = Color("GreenColor")
    let red = Color("RedColor")
    let secondaryText = Color("SecondaryTextColor")
}

extension Color {
    
    /// Color setUp for app
    static let theme = ColorTheme()
}
