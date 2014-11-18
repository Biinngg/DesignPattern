//
//  TurkeyAdapter.swift
//  adapter
//
//  Created by Bing Liu on 11/18/14.
//  Copyright (c) 2014 UnixOSS. All rights reserved.
//

import Foundation

public class TurkeyAdapter: Duck {
    
    let turkey: Turkey
    
    public init(turkey: Turkey) {
        self.turkey = turkey
    }
    
    public func quack() {
        turkey.gobble()
    }
    
    public func fly() {
        for i in 0...4 {
            turkey.fly()
        }
    }
    
}
