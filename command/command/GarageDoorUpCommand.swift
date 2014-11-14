//
//  GarageDoorUpCommand.swift
//  command
//
//  Created by Bing Liu on 11/12/14.
//  Copyright (c) 2014 UnixOSS. All rights reserved.
//

import Foundation

public class GarageDoorUpCommand: Command {
    
    public var garageDoor: GarageDoor
    
    public init(garageDoor: GarageDoor) {
        self.garageDoor = garageDoor
    }
    
    public func execute() {
        garageDoor.up()
        garageDoor.lightOn()
    }
    
    public func undo() {
        garageDoor.lightOff()
        garageDoor.down()
    }
    
}
