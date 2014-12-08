//
//  QuackCounter.swift
//  compound
//
//  Created by Bing Liu on 12/8/14.
//  Copyright (c) 2014 UnixOSS. All rights reserved.
//

import Foundation

var numberOfQuacks = 0

class QuackCounter: Quackable {
    
    let duck: Quackable
    
    init(duck: Quackable) {
        self.duck = duck
    }
    
    func quack() {
        duck.quack()
        numberOfQuacks++
    }
    
    class func getQuacks() -> Int {
        return numberOfQuacks
    }
    
    func registerObserver(observer: Observer) {
        duck.registerObserver(observer)
    }
    
    func notifyObservers() {
        duck.notifyObservers()
    }
    
}
