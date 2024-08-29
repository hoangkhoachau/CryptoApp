//
//  CryptoAppApp.swift
//  CryptoApp
//
//  Created by Chau Hoang Khoa on 5/09/2024.
//

import SwiftUI

@main
struct CryptoAppApp: App {
    
    @StateObject private var vm = HomeViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                HomeView()
            }
            .environmentObject(vm)
        }
    }
}
