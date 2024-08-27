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
            NavigationStack {
                HomeView()
                    //.toolbar(.hidden, for: .navigationBar) /// hide navigation bar
            }
        }
    }
}
