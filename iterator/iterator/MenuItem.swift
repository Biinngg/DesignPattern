//
//  MenuItem.swift
//  iterator
//
//  Created by Bing Liu on 11/24/14.
//  Copyright (c) 2014 UnixOSS. All rights reserved.
//

import Foundation

class MenuItem {
    
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
    
    func getName() -> String {
        return name
    }
    
    func getDescription() -> String {
        return description
    }
    
    func getPrice() -> Double {
        return price
    }
    
    func isVegetarian() -> Bool {
        return vegetarian
    }
    
}
