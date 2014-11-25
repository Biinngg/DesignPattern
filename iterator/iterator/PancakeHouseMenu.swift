//
//  PancakeHouseMenu.swift
//  iterator
//
//  Created by Bing Liu on 11/24/14.
//  Copyright (c) 2014 UnixOSS. All rights reserved.
//

import Foundation

class PancakeHouseMenu {
    
    var menuItems: [MenuItem]
    
    init() {
        menuItems = [MenuItem]()
        
        addItem(name: "K&B's Pancake Breakfast",
            description: "Pancakes with scrambled eggs, and toast",
            vegetarian: false,
            price: 2.99)
        addItem(name: "Regular Pancake Breakfast",
            description: "Pancakes with fried eggs, sausage",
            vegetarian: false,
            price: 2.99)
        addItem(name: "Blueberry Pancakes",
            description: "Pancakes made with fresh blueberries",
            vegetarian: true,
            price: 3.49)
        addItem(name: "Waffles",
            description: "Waffles, with your choice of blueberries or strawberries",
            vegetarian: true,
            price: 3.59)
    }
    
    func addItem(#name: String, description: String, vegetarian: Bool, price: Double) {
        let menuItem = MenuItem(name: name, description: description, vegetarian: vegetarian, price: price)
        menuItems.append(menuItem)
    }
    
    func getMenuItems() -> [MenuItem] {
        return menuItems
    }
    
    func createIterator() -> Iterator {
        return PancakeHouseIterator(items: menuItems)
    }
    
}
