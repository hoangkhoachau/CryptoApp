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
    @State private var showLaunchView: Bool = true
    
    init() {
        let navBarAppearance = UINavigationBar.appearance()
        navBarAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor(Color.theme.accent)]
        navBarAppearance.titleTextAttributes = [.foregroundColor: UIColor(Color.theme.accent)]
    }
    
    var body: some Scene {
        WindowGroup {
            ZStack {
                NavigationStack {
                    HomeView()
                }
                .environmentObject(vm)
                
                ZStack {
                    if showLaunchView {
                        LaunchView(showLaunch: $showLaunchView)
                            .transition(.move(edge: .leading))
                    }
                }
                .zIndex(2.0) /// It mins it'll be the second ZStack for transition
            }
        }
    }
}
