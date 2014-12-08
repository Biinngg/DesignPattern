//
//  Observable.swift
//  compound
//
//  Created by Bing Liu on 12/8/14.
//  Copyright (c) 2014 UnixOSS. All rights reserved.
//

import Foundation

class Observable: QuackObservable {
    
    var observers = [Observer]()
    let duck: QuackObservable
    
    init(duck: QuackObservable) {
        self.duck = duck
    }
    
    func registerObserver(observer: Observer) {
        observers.append(observer)
    }
    
    func notifyObservers() {
        for observer in observers {
            observer.update(duck)
        }
    }
    
}
