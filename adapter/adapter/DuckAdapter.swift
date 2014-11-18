//
//  DuckAdapter.swift
//  adapter
//
//  Created by Bing Liu on 11/18/14.
//  Copyright (c) 2014 UnixOSS. All rights reserved.
//

import Foundation

public class DuckAdapter: Turkey {
    
    let duck: Duck
    
    public init(duck: Duck) {
        self.duck = duck
    }
    
    public func gobble() {
        duck.quack()
    }
    
    public func fly() {
        if arc4random() % 5 == 0 {
            duck.fly()
        }
    }
    
}
