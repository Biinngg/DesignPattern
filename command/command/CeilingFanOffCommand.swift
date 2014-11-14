//
//  CeilingFanOffCommand.swift
//  command
//
//  Created by Bing Liu on 11/13/14.
//  Copyright (c) 2014 UnixOSS. All rights reserved.
//

import Foundation

public class CeilingFanOffCommand: Command {
    
    var ceilingFan: CeilingFan
    
    public init(ceilingFan: CeilingFan) {
        self.ceilingFan = ceilingFan
    }
    
    public func execute() {
        ceilingFan.off()
    }
    
    public func undo() {
        ceilingFan.on()
    }
    
}
