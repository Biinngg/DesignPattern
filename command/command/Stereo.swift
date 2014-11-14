//
//  Stereo.swift
//  command
//
//  Created by Bing Liu on 11/13/14.
//  Copyright (c) 2014 UnixOSS. All rights reserved.
//

import Foundation

public class Stereo {
    
    var name: String?
    
    public init(name: String) {
        self.name = name
    }
    
    public func on() {
        if name != nil {
            println("\(name!) Stereo is on")
        } else {
            println("Stereo is on")
        }
    }
    
    public func off() {
        if name != nil {
            println("\(name!) Stereo is off")
        } else {
            println("Stereo is off")
        }
    }
    
    public func setCD() {
        println("Put CD in")
    }
    
    public func setDVD() {
        println("Put DVD in")
    }
    
    public func setRadio() {
        println("Radio on")
    }
    
    public func setVolume(volume: Int) {
        println("Stereo volume is \(volume)")
    }
    
}
