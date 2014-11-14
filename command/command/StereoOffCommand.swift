//
//  StereoOffCommand.swift
//  command
//
//  Created by Bing Liu on 11/13/14.
//  Copyright (c) 2014 UnixOSS. All rights reserved.
//

import Foundation

public class StereoOffCommand: Command {
    
    var stereo: Stereo
    
    public init(stereo: Stereo) {
        self.stereo = stereo
    }
    
    public func execute() {
        stereo.off()
    }
    
    public func undo() {
        stereo.on()
    }
    
}
