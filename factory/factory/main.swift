//
//  main.swift
//  factory
//
//  Created by Bing Liu on 11/2/14.
//  Copyright (c) 2014 UnixOSS. All rights reserved.
//

import Foundation

let nyStore = NYPizzaStore()
//let chicagoStore = ChicagoStylePizzaStore()

var pizza = nyStore.orderPizza("cheese")!
println("Ethan ordered a \(pizza.getName()!)\n")

//pizza = chicagoStore.orderPizza("cheese")!
//println("Joel ordered a \(pizza.getName()!)\n")
