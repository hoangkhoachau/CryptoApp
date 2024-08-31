//
//  StatisticModel.swift
//  CryptoApp
//
//  Created by Chau Hoang Khoa on 9/09/2024.
//

import Foundation

struct StatisticModel: Identifiable {
    
    var id = UUID().uuidString
    let title: String
    let value: String
    let percentageChange: Double?
    
    /// Make two type of init:  with percentageChange and with percentageChange = nil
    init(title: String, value: String, percentageChange: Double? = nil) {
        self.title = title
        self.value = value
        self.percentageChange = percentageChange
    }
}
