//
//  DinerMenu.swift
//  iterator
//
//  Created by Bing Liu on 11/24/14.
//  Copyright (c) 2014 UnixOSS. All rights reserved.
//

import Foundation

class DinerMenu {
    
    let MAX_ITEMS = 6
    var numberOfItems = 0
    var menuItems: Array<MenuItem?>
    
    init() {
        menuItems = Array<MenuItem?>(count: MAX_ITEMS, repeatedValue: nil)
        addItem(name: "Vegetarian BLT", description: "(Fakin') Bacon with lettuce & tomato on whole wheat", vegetarian: true, price: 2.99)
        addItem(name: "BLT", description: "Bacon with lettuce & tomato on whole wheat", vegetarian: false, price: 2.99)
        addItem(name: "Soup of the day", description: "Soup of the day, with a side of potato salad", vegetarian: false, price: 3.29)
        addItem(name: "Hotdog", description: "A hot dog, with saurkraut, relish, onions, topped with cheese", vegetarian: false, price: 3.05)
    }
    
    func addItem(#name: String, description: String, vegetarian: Bool, price: Double) {
        let menuItem = MenuItem(name: name, description: description, vegetarian: vegetarian, price: price)
        if numberOfItems >= MAX_ITEMS {
            println("Sorry, menu is full! Can't add item to menu")
        } else {
            menuItems[numberOfItems++] = menuItem
        }
    }
    
//    func getMenuItems() -> Array<MenuItem?> {
//        return menuItems
//    }
    
    func createIterator() -> Iterator {
        return dinerMenuIterator(items: menuItems)
    }
    
}
