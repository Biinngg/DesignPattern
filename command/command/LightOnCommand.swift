//
//  LightOnCommand.swift
//  command
//
//  Created by Bing Liu on 11/12/14.
//  Copyright (c) 2014 UnixOSS. All rights reserved.
//

import Foundation

public class LightOnCommand: Command {
    
    public var light: Light
    
    public init(light: Light) {
        self.light = light
    }
    
    public func execute() {
        light.on()
    }
    
    public func undo() {
        light.off()
    }
    
}
