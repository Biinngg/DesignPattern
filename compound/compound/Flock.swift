//
//  Flock.swift
//  compound
//
//  Created by Bing Liu on 12/8/14.
//  Copyright (c) 2014 UnixOSS. All rights reserved.
//

import Foundation

class Flock: Quackable {
    
    var quackers = [Quackable]()
    
    func add(quacker: Quackable) {
        quackers.append(quacker)
    }
    
    func quack() {
        for quacker in quackers {
            quacker.quack()
        }
    }
    
}
