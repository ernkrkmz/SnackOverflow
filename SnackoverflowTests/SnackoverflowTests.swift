//
//  SnackoverflowTests.swift
//  SnackoverflowTests
//
//  Created by Eren Korkmaz on 4.09.2024.
//

import XCTest
@testable import Snackoverflow

final class SnackoverflowTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

    func testFetchUserAndCheck() async throws{
        let manager = NetworkManager.netvorkManager
        
        do {
            let userResponse = try await manager.fetch(path: "api/users" , method: .get, type: UserResponse.self)
            XCTAssertEqual(userResponse?.data.isEmpty, false)
            
        } catch  {
            XCTFail("Your service has error \(error)")

        }
        
        
        
    }
    
}
