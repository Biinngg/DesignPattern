//
//  HomeTheaterTestDrive.swift
//  adapter
//
//  Created by Bing Liu on 11/20/14.
//  Copyright (c) 2014 UnixOSS. All rights reserved.
//

import Foundation

class HomeTheaterTestDrive {
    
    class func test() {
        let homeTheater = HomeTheaterFacade(amp: Amplifier(), tuner: Tuner(), dvd: DvdPlayer(), cd: CdPlayer(), projector: Projector(), screen: Screen(), lights: TheaterLights(), popper: PopcornPopper())
        homeTheater.watchMovie("Raiders of the Lost Ark")
        homeTheater.endMovie()
    }
    
}
