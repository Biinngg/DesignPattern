//
//  GooseAdapter.swift
//  compound
//
//  Created by Bing Liu on 12/8/14.
//  Copyright (c) 2014 UnixOSS. All rights reserved.
//

import Foundation

class GooseAdapter: Quackable {
    
    let goose: Goose
    let observable: Observable!
    
    init(goose: Goose) {
        self.goose = goose
        observable = Observable(duck: self)
    }
    
    func quack() {
        goose.honk()
        notifyObservers()
    }
    
    func registerObserver(observer: Observer) {
        observable.registerObserver(observer)
    }
    
    func notifyObservers() {
        observable.notifyObservers()
    }
    
}
