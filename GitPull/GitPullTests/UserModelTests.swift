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
    var testUrl: String! = nil
    var testName: String! = nil
    var user: UserModel! = nil
    var image: UIImage! = nil
    var testRepoCount: Int! = nil
    
    override func setUp() {
        super.setUp()
        
        testUrl = "http://www.github.com/testurl"
        testName = "Test name"
        testRepoCount = 5
        
        user = UserModel(name: testName, url: testUrl, repoCount: testRepoCount)
    }
    
    override func tearDown() {
        super.tearDown()
    }

    func testInit_ShouldInitializeWithUsername() {
        XCTAssertEqual(user.userName, testName, "Initializer should set userName")
    }
    
    func testInit_CanInitializeWithUserAvatar() {
        image = UIImage()
        let testUser = UserModel(name: testName, url: testUrl, repoCount: testRepoCount, avatar: image)
        XCTAssertEqual(testUser.userAvatar, image, "Initializer can initialze with userAvatar")
    }
    
    func testInit_ShouldInitializeWithUserUrl() {
       XCTAssertEqual(user.userUrl, testUrl)
    }
    
    func testInit_ShouldInitializeWithUserRepoCount() {
        XCTAssertEqual(user.userRepoCount, testRepoCount, "Initializer should initialze with userRepoCount")
    }
    
    func testSetCustomUserAvatar_ShouldSetCustomUserAvatarImage() {
        image = UIImage()
        user.setCustomUserAvatar(image)
        
        XCTAssertEqual(user.userAvatar, image, "setCustomUserAvatar should change userAvatar image to defined image")
    }
    

}
