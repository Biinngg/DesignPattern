//
//  ModelDuck.swift
//  Chapter1
//
//  Created by Bing Liu on 10/25/14.
//  Copyright (c) 2014 UnixOSS. All rights reserved.
//

import Foundation

class ModelDuck: Duck {
    
    override init() {
        super.init()
        flyBehavior = FlyNoWay()
        quackBehavior = Quack()
    }
    
    override func display() {
        println("I'm a model duck")
    }
    
}
