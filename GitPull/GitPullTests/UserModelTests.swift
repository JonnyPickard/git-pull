//
//  UserModelTests.swift
//  GitPull
//
//  Created by Jonny Pickard on 19/08/2016.
//  Copyright © 2016 Jonny. All rights reserved.
//

import XCTest
@testable import GitPull

class UserModelTests: XCTestCase {

    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }

    func testInit_ShouldInitializeWithUsername() {
        let user = UserModel(name: "Test name")
    
        XCTAssertEqual(user.userName, "Test name", "Initializer should set userName")
    }
    

}
