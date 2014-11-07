//
//  Vehicle.swift
//  factory
//
//  Created by Bing Liu on 11/4/14.
//  Copyright (c) 2014 UnixOSS. All rights reserved.
//

import Foundation

class Vehicle {
    var numberOfWheels: Int = 1
    var code: String?
    init() {}
    var description: String {
        return "\(numberOfWheels) wheel(s)"
    }
}
