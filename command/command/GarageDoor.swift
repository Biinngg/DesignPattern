//
//  GarageDoor.swift
//  command
//
//  Created by Bing Liu on 11/12/14.
//  Copyright (c) 2014 UnixOSS. All rights reserved.
//

import Foundation

public class GarageDoor {
    
    var name: String?
    
    public init() { }
    
    public init(name: String) {
        self.name = name;
    }
    
    public func up() {
        if name != nil {
            println("\(name!) Garage door is up")
        } else {
            println("Garage door is up")
        }
    }
    
    public func down() {
        if name != nil {
            println("\(name!) Garage door is down")
        } else {
            println("Garage door is down")
        }
    }
    
    public func stop() {
        if name != nil {
            println("\(name!) Garage door is stopped")
        } else {
            println("Garage door is stopped")
        }
    }
    
    public func lightOn() {
        if name != nil {
            println("\(name!) Garage light is on")
        } else {
            println("Garage light is on")
        }
    }
    
    public func lightOff() {
        if name != nil {
            println("\(name!) Garage light is off")
        } else {
            println("Garage light is off")
        }
    }
    
}
