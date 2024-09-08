//
//  String.swift
//  CryptoApp
//
//  Created by Chau Hoang Khoa on 17/09/2024.
//

import Foundation

extension String {
    
    var removingHTMLOccurrences: String {
        /// Replace HTML code to ---> Void
        return self.replacingOccurrences(of: "<[^>]+>", with: "" ,options: .regularExpression)
    }
}
