//
//  APIRequestManagerTests.swift
//  GitPull
//
//  Created by Jonny Pickard on 19/08/2016.
//  Copyright © 2016 Jonny. All rights reserved.
//

import XCTest
@testable import GitPull

import DVR

class APIRequestManagerTests: XCTestCase {
   
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testGetRequest_ShouldQueryTheGithubAPI() {
        let apiRequestManager = APIRequestManager()
        
        let expectation = expectationWithDescription("Completion")
        
        let session = Session(cassetteName: "apiGetRequest")
        
        apiRequestManager.getRequest(session) { result, success in
            expectation.fulfill()
            XCTAssertEqual(success, true, "APIRequestManager #getRequest should return true on successful completion")
        }
        
        waitForExpectationsWithTimeout(1, handler: nil)
    }
}
