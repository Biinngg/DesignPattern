//
//  main.swift
//  observer
//
//  Created by Bing Liu on 11/2/14.
//  Copyright (c) 2014 UnixOSS. All rights reserved.
//

import Foundation

let weatherData = WeatherData()
let currentDisplay = CurrentConditionsDisplay(weatherData)
let statisticsDisplay = StatisticsDisplay(weatherData)
let forecastDisplay = ForecastDisplay(weatherData)

weatherData.setMeasurements(80, 65, 30.4)
weatherData.setMeasurements(82, 70, 29.2)
weatherData.setMeasurements(78, 90, 29.2)
