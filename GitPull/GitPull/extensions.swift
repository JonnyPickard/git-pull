//
//  extensions.swift
//  GitPull
//
//  Created by Jonny Pickard on 19/08/2016.
//  Copyright © 2016 Jonny. All rights reserved.
//

import Foundation

extension String {
    func trim() -> String {
        return self.stringByReplacingOccurrencesOfString(" ", withString: "")
    }
}