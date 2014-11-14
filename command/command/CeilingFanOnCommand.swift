//
//  CeilingFanOnCommand.swift
//  command
//
//  Created by Bing Liu on 11/13/14.
//  Copyright (c) 2014 UnixOSS. All rights reserved.
//

import Foundation

public class CeilingFanOnCommand: Command {
    
    var ceilingFan: CeilingFan
    
    public init(ceilingFan: CeilingFan) {
        self.ceilingFan = ceilingFan
    }
    
    public func execute() {
        ceilingFan.on()
    }
    
    public func undo() {
        ceilingFan.off()
    }
    
}
