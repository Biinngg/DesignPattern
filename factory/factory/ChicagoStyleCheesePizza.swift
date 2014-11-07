//
//  ChicagoStyleCheesePizza.swift
//  Chapter4
//
//  Created by Bing Liu on 11/2/14.
//  Copyright (c) 2014 UnixOSS. All rights reserved.
//

import Foundation



public class ChicagoStyleCheesePizza: Pizza {
    
    override init() {
        super.init()
        name = "Chicago Style Deep Dish Cheese Pizza"
        
    }
    
    public override func cut() {
        println("Cutting the pizza into square slices")
    }
    
}
