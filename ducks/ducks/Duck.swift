//
//  Duck.swift
//  Chapter1
//
//  Created by Bing Liu on 10/25/14.
//  Copyright (c) 2014 UnixOSS. All rights reserved.
//

import Foundation

class Duck {
    var flyBehavior : FlyBehavior?
    var quackBehavior : QuackBehavior?
    
    init() {
        
    }
    
    func display() {
        
    }
    
    func performFly() {
        flyBehavior!.fly()
    }
    
    func performQuack() {
        quackBehavior!.quack()
    }
    
    func swim() {
        println("All ducks float, even decoys!")
    }
}
