//
//  DvdPlayer.swift
//  adapter
//
//  Created by Bing Liu on 11/20/14.
//  Copyright (c) 2014 UnixOSS. All rights reserved.
//

import Foundation

class DvdPlayer {
    
    var movie: String?
    
    init() {
        
    }
    
    func on() {
        println("DVD Player on")
    }
    
    func play(movie: String) {
        self.movie = movie
        println("DVD Player playing \"\(movie)\"")
    }
    
    func stop() {
        println("DVD Player playing \"\(movie!)\"")
        
    }
    
    func eject() {
        
    }
    
    func off() {
        println("DVD Player playing off")
    }
    
}
