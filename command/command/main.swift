//
//  main.swift
//  command
//
//  Created by Bing Liu on 11/12/14.
//  Copyright (c) 2014 UnixOSS. All rights reserved.
//

import Foundation

//var remote: SimpleRemoteControl = SimpleRemoteControl()
//var light: Light = Light()
//var garageDoor: GarageDoor = GarageDoor()
//var lightOn: LightOnCommand = LightOnCommand(light: light)
//var garageDoorUp: GarageDoorUpCommand = GarageDoorUpCommand(garageDoor: garageDoor)
//
//remote.setCommand(lightOn)
//remote.buttonWasPressed()
//remote.setCommand(garageDoorUp)
//remote.buttonWasPressed()


var remoteControl = RemoteControl()

var livingRoomLight = Light(name: "Living Room")
var kitchenLight = Light(name: "Kitchen")
var ceilingFan = CeilingFan(name: "Living Room")
var garageDoor = GarageDoor(name: "")
var stereo = Stereo(name: "Living Room")

var livingRoomLightOn = LightOnCommand(light: livingRoomLight)
var livingRoomLightOff = LightOffCommand(light: livingRoomLight)
var kitchenLightOn = LightOnCommand(light: kitchenLight)
var kitchenLightOff = LightOffCommand(light: kitchenLight)

var ceilingFanOn = CeilingFanOnCommand(ceilingFan: ceilingFan)
var ceilingFanOff = CeilingFanOffCommand(ceilingFan: ceilingFan)

var garageDoorUp = GarageDoorUpCommand(garageDoor: garageDoor)
var garageDoorDown = GarageDoorDownCommand(garageDoor: garageDoor)

var stereoOnWithCD = StereoOnWithCDCommand(stereo: stereo)
var stereoOff = StereoOffCommand(stereo: stereo)

remoteControl.setCommand(0, onCommand: livingRoomLightOn, offCommand: livingRoomLightOff)
remoteControl.setCommand(1, onCommand: kitchenLightOn, offCommand: kitchenLightOff)
remoteControl.setCommand(2, onCommand: ceilingFanOn, offCommand: ceilingFanOff)
remoteControl.setCommand(3, onCommand: stereoOnWithCD, offCommand: stereoOff)

println(remoteControl.description)

remoteControl.onButtonWasPushed(0)
remoteControl.offButtonWasPushed(0)
remoteControl.onButtonWasPushed(1)
remoteControl.offButtonWasPushed(1)
remoteControl.onButtonWasPushed(2)
remoteControl.offButtonWasPushed(2)
remoteControl.onButtonWasPushed(3)
remoteControl.offButtonWasPushed(3)
