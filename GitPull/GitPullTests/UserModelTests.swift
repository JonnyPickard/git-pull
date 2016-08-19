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
    
    func testInit_CanInitializerWithUserAvatar() {
        let image = UIImage()
        let user = UserModel(name: "Test name", avatar: image)
        
        XCTAssertEqual(user.userAvatar, image, "Initializer can initialze with userAvatar")
    }
    
    func testSetCustomUserAvatar_ShouldSetCustomUserAvatarImage() {
        let image = UIImage()
        var user = UserModel(name: "Test name")
        
        user.setCustomUserAvatar(image)
        
        XCTAssertEqual(user.userAvatar, image, "setCustomUserAvatar should change userAvatar image to defined image")
    }
    

}
