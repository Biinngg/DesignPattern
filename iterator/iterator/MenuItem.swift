//
//  MenuItem.swift
//  iterator
//
//  Created by Bing Liu on 11/24/14.
//  Copyright (c) 2014 UnixOSS. All rights reserved.
//

import Foundation

class MenuItem: MenuComponent {
    
    let name: String
    let description: String
    let vegetarian: Bool
    let price: Double
    
    init(name: String, description: String, vegetarian: Bool, price: Double) {
        self.name = name
        self.description = description
        self.vegetarian = vegetarian
        self.price = price
    }
    
    override func getName() -> String {
        return name
    }
    
    override func getDescription() -> String {
        return description
    }
    
    override func getPrice() -> Double {
        return price
    }
    
    override func isVegetarian() -> Bool {
        return vegetarian
    }
    
    override func print() {
        var print = "   \(getName())"
        if isVegetarian() {
            print += "(v)"
        }
        println("\(print), \(getPrice())")
        println("   -- \(getDescription())")
    }
    
}
