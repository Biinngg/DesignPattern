//
//  HomeTheaterFacade.swift
//  adapter
//
//  Created by Bing Liu on 11/20/14.
//  Copyright (c) 2014 UnixOSS. All rights reserved.
//

import Foundation

class HomeTheaterFacade {
    
    let amp: Amplifier
    let tuner: Tuner
    let dvd: DvdPlayer
    let cd: CdPlayer
    let projector: Projector
    let lights: TheaterLights
    let screen: Screen
    let popper: PopcornPopper
    
    init(amp: Amplifier, tuner: Tuner, dvd: DvdPlayer, cd: CdPlayer, projector: Projector, screen: Screen, lights: TheaterLights, popper: PopcornPopper) {
        self.amp = amp
        self.tuner = tuner
        self.dvd = dvd
        self.cd = cd
        self.projector = projector
        self.lights = lights
        self.screen = screen
        self.popper = popper
    }
    
    func watchMovie(movie: String) {
        println("Get ready to watch a movie...")
        popper.on()
        popper.pop()
        lights.dim(10)
        screen.down()
        projector.on()
        projector.wideScreenMode()
        amp.on()
        amp.setDvd(dvd)
        amp.setVolume(5)
        dvd.on()
        dvd.play(movie)
    }
    
    func endMovie() {
        println("Shutting movie theater down...")
        popper.off()
        lights.on()
        screen.up()
        projector.off()
        amp.off()
        dvd.stop()
        dvd.eject()
        dvd.off()
    }
    
}
