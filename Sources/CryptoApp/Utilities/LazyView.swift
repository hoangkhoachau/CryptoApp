//
//  LazyView.swift
//  CryptoApp
//
//  Created by Chau Hoang Khoa on 15/09/2024.
//

import SwiftUI

//MARK: LazyView allowed, don't download all views in the list instead -> download when clicked
struct LazyView<Content: View>: View {
    let build: () -> Content
    init(_ build: @autoclosure @escaping () -> Content) {
        self.build = build
    }
    var body: Content {
        build()
    }
}
