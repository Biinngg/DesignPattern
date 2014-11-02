//
//  NYStyleCheesePizza.swift
//  Chapter4
//
//  Created by Bing Liu on 11/2/14.
//  Copyright (c) 2014 UnixOSS. All rights reserved.
//

import Cocoa

public class NYStyleCheesePizza: Pizza {
    
    override init() {
        super.init()
        name = "NY Style Sauce and Cheese Pizza"
        dough = "Thin Crust Dough"
        sauce = "Marinara Sauce"
        
        toppings.append("Grated Reggiano Cheese")
    }

}
