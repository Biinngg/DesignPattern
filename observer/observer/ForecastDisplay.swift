//
//  ForecastDisplay.swift
//  Chapter2
//
//  Created by Bing Liu on 10/28/14.
//  Copyright (c) 2014 UnixOSS. All rights reserved.
//

import Foundation

class ForecastDisplay: Observer, DisplayElement {
    
    private var temperature: Float?
    private var humidity: Float?
    private var pressure: Float?
    
    private let weatherData: WeatherData
    
    init(_ weatherData: WeatherData) {
        self.weatherData = weatherData
        weatherData.registerObserver(self)
    }
    
    func update(temp: Float, _ humidity: Float, _ pressure: Float) {
        temperature = temp
        self.humidity = humidity
        self.pressure = pressure
        display()
    }
    
    func display() {
        println("Forecast temperature \(temperature!) F degrees and humidity \(humidity!) % and pressure \(pressure!)")
    }
    
}
