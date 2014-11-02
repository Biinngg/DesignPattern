//
//  WeatherData.swift
//  Chapter2
//
//  Created by Bing Liu on 10/27/14.
//  Copyright (c) 2014 UnixOSS. All rights reserved.
//

import Foundation

class WeatherData: Subject {
    private var observers : [Observer]
    private var temperature : Float?
    private var humidity : Float?
    private var pressure: Float?
    
    init() {
        observers = [Observer]()
    }
    
    func registerObserver(o: Observer) {
        observers.append(o)
    }
    
    func removeObserver(o: Observer) {
        var i: Int?
        for (index, value) in enumerate(observers) {
            if value === o {
                i = index
            }
        }
        if let index = i {
            observers.removeAtIndex(index)
        }
    }
    
    func notifyObservers() {
        for observer in observers {
            observer.update(temperature!, humidity!, pressure!)
        }
    }
    
    func measurementsChanged() {
        notifyObservers()
    }
    
    func setMeasurements(temperature: Float, _ humidity: Float, _ pressure: Float) {
        self.temperature = temperature
        self.humidity = humidity
        self.pressure = pressure
        measurementsChanged()
    }
}
