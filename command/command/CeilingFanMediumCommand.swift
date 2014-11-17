//
//  CeilingFanMediumCommand.swift
//  command
//
//  Created by Bing Liu on 11/17/14.
//  Copyright (c) 2014 UnixOSS. All rights reserved.
//

import Foundation

public class CeilingFanMediumCommand: Command {
    
    var ceilingFan: CeilingFan
    var prevSpeed: Speed?
    
    public init(ceilingFan: CeilingFan) {
        self.ceilingFan = ceilingFan
    }
    
    public func execute() {
        prevSpeed = ceilingFan.getSpeed()
        ceilingFan.medium()
    }
    
    public func undo() {
        switch prevSpeed! {
        case .HIGH:
            ceilingFan.high()
        case .MEDIUM:
            ceilingFan.medium()
        case .LOW:
            ceilingFan.low()
        case .OFF:
            ceilingFan.off()
        }
    }
    
}
