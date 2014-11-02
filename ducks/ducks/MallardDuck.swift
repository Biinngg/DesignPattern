//
//  MallardDuck.swift
//  Chapter1
//
//  Created by Bing Liu on 10/25/14.
//  Copyright (c) 2014 UnixOSS. All rights reserved.
//

import Foundation

class MallardDuck: Duck {
    
    override init() {
        super.init()
        flyBehavior = FlyWithWings()
        quackBehavior = Quack()
    }
    
}
