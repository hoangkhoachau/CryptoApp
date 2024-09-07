//
//  Date.swift
//  CryptoApp
//
//  Created by Chau Hoang Khoa on 17/09/2024.
//

import Foundation

//MARK: Date Formator
extension Date {
    
    func asShortDateString() -> String {
        return shortFormatter.string(from: self)
    }
    
    init(coinGecoString: String) {
        /// incoming date - lastUpdated:  ---- "2023-04-18T13:56:01.620Z"
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
        let date = formatter.date(from: coinGecoString) ?? Date()
        self.init(timeInterval: 0, since: date)
    }
    
    private var shortFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        return formatter
    }
}
