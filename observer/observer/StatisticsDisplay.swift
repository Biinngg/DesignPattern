//
//  StatisticsDisplay.swift
//  Chapter2
//
//  Created by Bing Liu on 10/28/14.
//  Copyright (c) 2014 UnixOSS. All rights reserved.
//

import Foundation

class StatisticsDisplay: Observer, DisplayElement {
    
    private var minTemperature: Float?
    private var maxTemperature: Float?
    private var totalTemperature: Float = 0.0
    private var minHumidity: Float?
    private var maxHumidity: Float?
    private var totalHumidity: Float = 0.0
    private var minPressure: Float?
    private var maxPressure: Float?
    private var totalPressure: Float = 0.0
    private var count: Int = 0
    private let weatherData: WeatherData
    
    init(_ weatherData: WeatherData) {
        self.weatherData = weatherData
        weatherData.registerObserver(self)
    }
    
    func update(temp: Float, _ humidity: Float, _ pressure: Float) {
        if minTemperature == nil || minTemperature > temp {
            minTemperature = temp
        }
        if maxTemperature == nil || maxTemperature < temp {
            maxTemperature = temp
        }
        totalTemperature += temp
        
        if minHumidity == nil || minHumidity > humidity {
            minHumidity = humidity
        }
        if maxHumidity == nil || maxHumidity < humidity {
            maxHumidity = humidity
        }
        totalHumidity += humidity
        
        if minPressure == nil || minPressure > pressure {
            minPressure = pressure
        }
        if maxPressure == nil || maxPressure < pressure {
            maxPressure = pressure
        }
        totalPressure += pressure
        count++
        display()
    }
    
    func display() {
        let floatCount: Float = Float(count)
        let averageTemperature = totalTemperature/floatCount
        let averageHumidity = totalHumidity/floatCount
        let averagePressure = totalPressure/floatCount
        println("Temperature min \(minTemperature!) F degrees, max \(maxTemperature!) F degrees, average \(averageTemperature) F degrees")
        println("Humidity min \(minHumidity!) %, max \(maxHumidity!) %, average \(averageHumidity) %")
        println("Pressure min \(minPressure!), max \(maxPressure!), average \(averagePressure)")
    }
    
}
