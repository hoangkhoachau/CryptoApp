//
//  HapticManager.swift
//  CryptoApp
//
//  Created by Chau Hoang Khoa on 14/09/2024.
//

import Foundation
import SwiftUI

final class HapticManager {
    
    static private let generator = UINotificationFeedbackGenerator()
    
    static func notification(type: UINotificationFeedbackGenerator.FeedbackType) {
        generator.notificationOccurred(type)
    }
    
    private init() { }
}
