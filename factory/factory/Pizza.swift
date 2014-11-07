//
//  Pizza.swift
//  Chapter4
//
//  Created by Bing Liu on 10/31/14.
//  Copyright (c) 2014 UnixOSS. All rights reserved.
//

import Foundation

public class Pizza {
    
    var name: String?
    var dough: Dough?
    var sauce: Sauce?
    var veggies: [Veggies]?
    var cheese: Cheese?
    var pepperoni: Pepperoni?
    var clam: Clams?
    
    init() {}
    
    public func prepare() {
        fatalError("This method must be overridden")
    }
    
    public func bake() {
        println("Bake for 25 minutes at 350")
    }
    
    public func cut() {
        println("Cutting the pizza into diagonal slices")
    }
    
    public func box() {
        println("Place pizza in official PizzaStore box")
    }
    
    public func getName() -> String? {
        return name
    }
    
    public func toString() -> String? {
        return nil
    }
    
}
