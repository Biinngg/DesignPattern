//
//  GarageDoorDownCommand.swift
//  command
//
//  Created by Bing Liu on 11/13/14.
//  Copyright (c) 2014 UnixOSS. All rights reserved.
//

import Foundation

public class GarageDoorDownCommand: Command {
    
    var garageDoor: GarageDoor
    
    public init(garageDoor: GarageDoor) {
        self.garageDoor = garageDoor
    }
    
    public func execute() {
        garageDoor.lightOff()
        garageDoor.down()
    }
    
}
