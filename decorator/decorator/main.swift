//
//  main.swift
//  decorator
//
//  Created by Bing Liu on 11/2/14.
//  Copyright (c) 2014 UnixOSS. All rights reserved.
//

import Foundation

let beverage: Beverage = Espresso()
beverage.size = .Venti
println("\(beverage.getDescription()) $ \(beverage.cost())")

var beverage2: Beverage = DarkRoast()
beverage2.size = .Grande
beverage2 = Mocha(beverage2)
beverage2 = Mocha(beverage2)
beverage2 = Whip(beverage2)
println("\(beverage2.getDescription()) $ \(beverage2.cost())")

var beverage3: Beverage = HouseBlend()
beverage3.size = .Venti
beverage3 = Soy(beverage3)
beverage3 = Mocha(beverage3)
beverage3 = Whip(beverage3)
println("\(beverage3.getDescription()) $ \(beverage3.cost())")
