//
//  MacroCommand.swift
//  command
//
//  Created by Bing Liu on 11/17/14.
//  Copyright (c) 2014 UnixOSS. All rights reserved.
//

import Foundation

public class MacroCommand: Command {
    
    let commands: [Command]
    
    public init(commands: [Command]) {
        self.commands = commands
    }
    
    public func execute() {
        for command in commands {
            command.execute()
        }
    }
    
    public func undo() {
        for command in commands {
            command.undo()
        }
    }
    
}
