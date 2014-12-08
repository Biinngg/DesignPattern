//
//  DuckCall.swift
//  compound
//
//  Created by Bing Liu on 12/8/14.
//  Copyright (c) 2014 UnixOSS. All rights reserved.
//

import Foundation

class DuckCall: Quackable {
    
    let observable: Observable!
    
    init() {
        observable = Observable(duck: self)
    }
    
    func quack() {
        println("Kwak")
        notifyObservers()
    }
    
    func registerObserver(observer: Observer) {
        observable.registerObserver(observer)
    }
    
    func notifyObservers() {
        observable.notifyObservers()
    }
    
}
