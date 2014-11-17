//
//  RemoteControl.swift
//  command
//
//  Created by Bing Liu on 11/12/14.
//  Copyright (c) 2014 UnixOSS. All rights reserved.
//

import Foundation

public class RemoteControl {
    
    var onCommands: [Command]
    var offCommands: [Command]
    var undoCommand: Command
    
    public init() {
        let noCommand: Command = NoCommand()
        onCommands = [Command](count: 7, repeatedValue: noCommand)
        offCommands = [Command](count: 7, repeatedValue: noCommand)
        undoCommand = noCommand
    }
    
    public func setCommand(slot: Int, onCommand: Command, offCommand: Command) {
        onCommands[slot] = onCommand
        offCommands[slot] = offCommand
    }
    
    public func onButtonWasPushed(slot: Int) {
        onCommands[slot].execute()
        undoCommand = onCommands[slot]
    }
    
    public func offButtonWasPushed(slot: Int) {
        offCommands[slot].execute()
        undoCommand = offCommands[slot]
    }
    
    public func undoButtonWasPushed() {
        undoCommand.undo()
    }
    
    public var description: String {
        var string: String = "\n------ Remote Control ------\n"
        for var index=0; index<onCommands.count; ++index {
            string += "[slot \(index)] " + _stdlib_getTypeName(onCommands[index]) + "   " + _stdlib_getTypeName(offCommands[index]) + "\n"
        }
        string += "[undo] " + _stdlib_getTypeName(undoCommand) + "\n"
        return string
    }
    
}
