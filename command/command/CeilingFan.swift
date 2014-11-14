//
//  CeilingFan.swift
//  command
//
//  Created by Bing Liu on 11/13/14.
//  Copyright (c) 2014 UnixOSS. All rights reserved.
//

import Foundation

public enum Speed: Int {
    case OFF = 0, LOW, MEDIUM, HIGH
}

public class CeilingFan {
    
    var name: String?
    var speed: Speed
    
    public init() {
        speed = .OFF
    }
    
    public init(name: String) {
        self.name = name
        speed = .OFF
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
        speed = .OFF
    }
    
    public func high() {
        speed = .HIGH
    }
    
    public func medium() {
        speed = .MEDIUM
    }
    
    public func low() {
        speed = .LOW
    }
    
    public func getSpeed() -> Speed {
        return speed
    }
    
}
