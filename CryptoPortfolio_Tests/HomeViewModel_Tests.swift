//
//  HomeViewModel_Tests.swift
//  CryptoApp_Tests
//
//  Created by Chau Hoang Khoa on 19/09/2024.
//

import XCTest
import Combine
@testable import CryptoApp

//🔥 1. Name - test_[ struct or class ]_[ var or func ]_[ Expected behavior ]

//🔥 2. Testing struct - Given, When, Then

final class HomeViewModel_Tests: XCTestCase {
    
    var cancellable = Set<AnyCancellable>()
    var viewModel: HomeViewModel?

    override func setUpWithError() throws {
        
        viewModel = HomeViewModel(coinDataService: MockCoinDataService())
    }

    override func tearDownWithError() throws {
        
        viewModel = nil
        cancellable.removeAll()
    }
    
    func test_HomeViewModel_HomeViewModel_StartSetUp() {
        //Given
        let vm = HomeViewModel(coinDataService: MockCoinDataService())
        
        //When

        
        //Then
    }

   

}
