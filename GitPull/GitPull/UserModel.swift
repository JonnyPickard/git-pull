//
//  UserModel.swift
//  GitPull
//
//  Created by Jonny Pickard on 19/08/2016.
//  Copyright © 2016 Jonny. All rights reserved.
//

import UIKit

struct UserModel {
    let userName: String
    let userAvatar: UIImage
    
    init(name: String, avatar: UIImage = UIImage()) {
        userName = name
        userAvatar = avatar
    }
}