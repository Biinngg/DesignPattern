//
//  Bicycle.swift
//  factory
//
//  Created by Bing Liu on 11/4/14.
//  Copyright (c) 2014 UnixOSS. All rights reserved.
//

import Foundation

class Bicycle: Vehicle {
    override init() {
        super.init()
        numberOfWheels = 2
    }
}
