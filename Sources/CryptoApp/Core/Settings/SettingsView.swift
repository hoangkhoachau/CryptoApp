//
//  SettingsView.swift
//  CryptoApp
//
//  Created by Chau Hoang Khoa on 17/09/2024.
//

import SwiftUI

struct SettingsView: View {
    
    @Environment(\.dismiss) var goBack
    
    let GitHubDeveloperURL: URL = URL(string: "https://github.com/hoangkhoachau")!
    let CoinGeckoURL: URL = URL(string: "https://www.coingecko.com")!
    
    var body: some View {
        NavigationStack {
            ZStack {
                
                /// Background
                Color.theme.background
                    .ignoresSafeArea()
                
                /// Content
                List {
                    developer
                        //.listRowBackground(Color.theme.background)
                    coinGecko
                        //.listRowBackground(Color.theme.background)
                }
            }
            .scrollContentBackground(.hidden)
            .navigationTitle("Settings")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        goBack()
                    } label: {
                        Image(systemName: "arrowshape.turn.up.backward.2")
                            .accessibilityIdentifier("dismiss_Button_ID")
                            .font(.headline)
                            .foregroundColor(Color.theme.red)
                    }

                }
            }
        }
    }
}

//                 🔱
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
            SettingsView()
    }
}

//MARK: Components
extension SettingsView {
    
    private var developer: some View {
        Section {
            HStack {
                VStack (alignment: .leading, spacing: 10) {
                    HStack {
                        Link("Developer GitHub ", destination: GitHubDeveloperURL)
                        Image(systemName: "network")
                            .foregroundColor(Color.theme.red)
                    }
                }
            }
        } header: {
            Text("About Developer")
                .foregroundColor(Color.theme.secondaryText)
        }
    }
    
    private var coinGecko: some View {
        Section {
            HStack {
                
                Link("CoinGecko", destination: CoinGeckoURL)
                
                Image(systemName: "network")
                    .foregroundColor(Color.theme.red)
            }
        } header: {
            Text("CoinGecko API")
                .foregroundColor(Color.theme.secondaryText)
        }
    }
}
