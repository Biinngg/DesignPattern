//
//  Quackologist.swift
//  compound
//
//  Created by Bing Liu on 12/8/14.
//  Copyright (c) 2014 UnixOSS. All rights reserved.
//

import Foundation

class Quackologist: Observer {
    
    func update(duck: QuackObservable) {
        println("Quackologist: \(duck) just quacked.")
    }
    
}
