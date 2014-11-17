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


//var remoteControl = RemoteControl()
//
//var livingRoomLight = Light(name: "Living Room")
//var kitchenLight = Light(name: "Kitchen")
//var ceilingFan = CeilingFan(name: "Living Room")
//var garageDoor = GarageDoor(name: "")
//var stereo = Stereo(name: "Living Room")
//
//var livingRoomLightOn = LightOnCommand(light: livingRoomLight)
//var livingRoomLightOff = LightOffCommand(light: livingRoomLight)
//var kitchenLightOn = LightOnCommand(light: kitchenLight)
//var kitchenLightOff = LightOffCommand(light: kitchenLight)
//
//var ceilingFanOn = CeilingFanOnCommand(ceilingFan: ceilingFan)
//var ceilingFanOff = CeilingFanOffCommand(ceilingFan: ceilingFan)
//
//var garageDoorUp = GarageDoorUpCommand(garageDoor: garageDoor)
//var garageDoorDown = GarageDoorDownCommand(garageDoor: garageDoor)
//
//var stereoOnWithCD = StereoOnWithCDCommand(stereo: stereo)
//var stereoOff = StereoOffCommand(stereo: stereo)
//
//remoteControl.setCommand(0, onCommand: livingRoomLightOn, offCommand: livingRoomLightOff)
//remoteControl.setCommand(1, onCommand: kitchenLightOn, offCommand: kitchenLightOff)
//remoteControl.setCommand(2, onCommand: ceilingFanOn, offCommand: ceilingFanOff)
//remoteControl.setCommand(3, onCommand: stereoOnWithCD, offCommand: stereoOff)
//
//println(remoteControl.description)
//
//remoteControl.onButtonWasPushed(0)
//remoteControl.offButtonWasPushed(0)
//remoteControl.onButtonWasPushed(1)
//remoteControl.offButtonWasPushed(1)
//remoteControl.onButtonWasPushed(2)
//remoteControl.offButtonWasPushed(2)
//remoteControl.onButtonWasPushed(3)
//remoteControl.offButtonWasPushed(3)
//
//remoteControl.onButtonWasPushed(0)
//remoteControl.offButtonWasPushed(0)
//println(remoteControl.description)
//remoteControl.undoButtonWasPushed()
//remoteControl.offButtonWasPushed(0)
//remoteControl.onButtonWasPushed(0)
//println(remoteControl.description)
//remoteControl.undoButtonWasPushed()


//var remoteControl = RemoteControl()
//let ceilingFan = CeilingFan(name: "Living Room")
//let ceilingFanMedium = CeilingFanMediumCommand(ceilingFan: ceilingFan)
//let ceilingFanHigh = CeilingFanHighCommand(ceilingFan: ceilingFan)
//let ceilingFanOff = CeilingFanOffCommand(ceilingFan: ceilingFan)
//remoteControl.setCommand(0, onCommand: ceilingFanMedium, offCommand: ceilingFanOff)
//remoteControl.setCommand(1, onCommand: ceilingFanHigh, offCommand: ceilingFanOff)
//remoteControl.onButtonWasPushed(0)
//remoteControl.offButtonWasPushed(0)
//println(remoteControl.description)
//remoteControl.undoButtonWasPushed()
//
//remoteControl.onButtonWasPushed(1)
//println(remoteControl.description)
//remoteControl.undoButtonWasPushed()


let light = Light(name: "Living Room")
let ceilingFan = CeilingFan(name: "Living Room")
let garageDoor = GarageDoor()
let stereo = Stereo(name: "Living Room")

let lightOn = LightOnCommand(light: light)
let ceilingFanOn = CeilingFanOnCommand(ceilingFan: ceilingFan)
let garageDoorUp = GarageDoorUpCommand(garageDoor: garageDoor)
let stereoOn = StereoOnWithCDCommand(stereo: stereo)

let lightOff = LightOffCommand(light: light)
let ceilingFanOff = CeilingFanOffCommand(ceilingFan: ceilingFan)
let garageDoorDown = GarageDoorDownCommand(garageDoor: garageDoor)
let stereoOff = StereoOffCommand(stereo: stereo)

let partyOn: [Command] = [lightOn, ceilingFanOn, garageDoorUp, stereoOn]
let partyOff: [Command] = [lightOff, ceilingFanOff, garageDoorDown, stereoOff]

let partyOnMacro = MacroCommand(commands: partyOn)
let partyOffMacro = MacroCommand(commands: partyOff)

let remoteControl = RemoteControl()
remoteControl.setCommand(0, onCommand: partyOnMacro, offCommand: partyOffMacro)
println(remoteControl.description)
println("--- Pushing Macro On ---")
remoteControl.onButtonWasPushed(0)
println("--- Pushing Macro Off ---")
remoteControl.offButtonWasPushed(0)
println("--- Pushing Macro Undo ---")
remoteControl.undoButtonWasPushed()
