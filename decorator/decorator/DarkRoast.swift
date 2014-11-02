//
//  DarkRoast.swift
//  Chapter3
//
//  Created by Bing Liu on 10/30/14.
//  Copyright (c) 2014 UnixOSS. All rights reserved.
//

import Foundation

class DarkRoast: Beverage {
    
    override init() {
        super.init()
        description = "DarkRoast"
    }
    
    override func cost() -> Double {
        return 2.2
    }
    
}
