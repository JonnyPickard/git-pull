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
    
    override func setUp() {
        super.setUp()
        
        testUrl = "http://www.github.com/testurl"
        testName = "Test name"
    }
    
    override func tearDown() {
        super.tearDown()
    }

    func testInit_ShouldInitializeWithUsername() {
        let user = UserModel(name: testName, url: testUrl)
    
        XCTAssertEqual(user.userName, testName, "Initializer should set userName")
    }
    
    func testInit_CanInitializeWithUserAvatar() {
        let image = UIImage()
        let user = UserModel(name: testName,  url: testUrl, avatar: image)
        
        XCTAssertEqual(user.userAvatar, image, "Initializer can initialze with userAvatar")
    }
    
    func testInit_shouldInitializeWithUserUrl() {
        let user = UserModel(name: testName, url: testUrl)
        
        XCTAssertEqual(user.userUrl, testUrl)
    }
    
    func testSetCustomUserAvatar_ShouldSetCustomUserAvatarImage() {
        let image = UIImage()
        var user = UserModel(name: testName, url: testUrl)
        
        user.setCustomUserAvatar(image)
        
        XCTAssertEqual(user.userAvatar, image, "setCustomUserAvatar should change userAvatar image to defined image")
    }
    

}
