//
//  LightOffCommand.swift
//  command
//
//  Created by Bing Liu on 11/13/14.
//  Copyright (c) 2014 UnixOSS. All rights reserved.
//

import Foundation

public class LightOffCommand: Command {
    
    var light: Light
    
    public init(light: Light) {
        self.light = light
    }
    
    public func execute() {
        light.off()
    }
    
    public func undo() {
        light.on()
    }
    
}
