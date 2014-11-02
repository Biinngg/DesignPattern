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
    var dough: String?
    var sauce: String?
    var toppings: [String] = [String]()
    
    init() {
        
    }
    
    public func prepare() {
        println("Preparing \(name!)")
        println("Tossing dough...")
        println("Adding sauce...")
        println("Adding toppings: ")
        for topping in toppings {
            println(" \(topping)")
        }
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
        return name;
    }
    
}
