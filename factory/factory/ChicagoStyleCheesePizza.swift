//
//  ChicagoStyleCheesePizza.swift
//  Chapter4
//
//  Created by Bing Liu on 11/2/14.
//  Copyright (c) 2014 UnixOSS. All rights reserved.
//

import Cocoa

public class ChicagoStyleCheesePizza: Pizza {
    
    override init() {
        super.init()
        name = "Chicago Style Deep Dish Cheese Pizza"
        dough = "Extra Thick Crust Dough"
        sauce = "Plum Tomato Sauce"
        
        toppings.append("Shredded Mozzarella Cheese")
    }
    
    public override func cut() {
        println("Cutting the pizza into square slices")
    }
    
}
