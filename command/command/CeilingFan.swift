//
//  CeilingFan.swift
//  command
//
//  Created by Bing Liu on 11/13/14.
//  Copyright (c) 2014 UnixOSS. All rights reserved.
//

import Foundation

public class CeilingFan {
    
    var name: String?
    
    public init() {
        
    }
    
    public init(name: String) {
        self.name = name
    }
    
    public func on() {
        if name != nil {
            println("\(name!) Ceiling Fan is on")
        } else {
            println("Ceiling Fan is on")
        }
    }
    
    public func off() {
        if name != nil {
            println("\(name!) Ceiling Fan is off")
        } else {
            println("Ceiling Fan is off")
        }
    }
    
}
