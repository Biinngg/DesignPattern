//
//  CurrentConditionsDisplay.swift
//  Chapter2
//
//  Created by Bing Liu on 10/28/14.
//  Copyright (c) 2014 UnixOSS. All rights reserved.
//

import Foundation

class CurrentConditionsDisplay: Observer, DisplayElement {
    
    private var temperature: Float?
    private var humidity: Float?
    private let weatherData: Subject
    
    init(_ weatherData: Subject) {
        self.weatherData = weatherData
        weatherData.registerObserver(self)
    }
    
    func update(temp: Float, _ humidity: Float, _ pressure: Float) {
        temperature = temp
        self.humidity = humidity
        display()
    }
    
    func display() {
        println("Current conditions: \(temperature!) F degrees and \(humidity!) % humidity")
    }
    
}
