//
//  StereoOnWithCDCommand.swift
//  command
//
//  Created by Bing Liu on 11/13/14.
//  Copyright (c) 2014 UnixOSS. All rights reserved.
//

import Foundation

public class StereoOnWithCDCommand: Command {
    
    var stereo: Stereo
    
    public init(stereo: Stereo) {
        self.stereo = stereo
    }
    
    public func execute() {
        stereo.on()
        stereo.setCD()
        stereo.setVolume(11)
    }
    
}
