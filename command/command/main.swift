//
//  main.swift
//  command
//
//  Created by Bing Liu on 11/12/14.
//  Copyright (c) 2014 UnixOSS. All rights reserved.
//

import Foundation

var remote: SimpleRemoteControl = SimpleRemoteControl()
var light: Light = Light()
var garageDoor: GarageDoor = GarageDoor()
var lightOn: LightOnCommand = LightOnCommand(light: light)
var garageDoorOpen: GarageDoorOpenCommand = GarageDoorOpenCommand(garageDoor: garageDoor)

remote.setCommand(lightOn)
remote.buttonWasPressed()
remote.setCommand(garageDoorOpen)
remote.buttonWasPressed()
