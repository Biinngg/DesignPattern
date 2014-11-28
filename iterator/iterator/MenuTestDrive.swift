//
//  MenuTestDrive.swift
//  iterator
//
//  Created by Bing Liu on 11/25/14.
//  Copyright (c) 2014 UnixOSS. All rights reserved.
//

import Foundation

class MenuTestDrive {
    
    class func test() {
//        let pancakeHouseMenu = PancakeHouseMenu()
//        let dinerMenu = DinerMenu()
//        
//        let waitress = Waitress(pancakeHouseMenu: pancakeHouseMenu, dinerMenu: dinerMenu)
//        waitress.printMenu()
        
        let pancakeHouseMenu = Menu(name: "PANCAKE HOUSE MENU", description: "Breakfast")
        let dinerMenu = Menu(name: "DINER MENU", description: "Lunch")
        let cafeMenu = Menu(name: "CAFE MENU", description: "Dinner")
        let dessertMenu = Menu(name: "DESSERT MENU", description: "Dessert of course!")
        
        let allMenus = Menu(name: "ALL MENUS", description: "All menus combined")
        
        allMenus.add(pancakeHouseMenu)
        allMenus.add(dinerMenu)
        allMenus.add(cafeMenu)
        
        dinerMenu.add(MenuItem(name: "Pasta", description: "Spaghetti with Marinara Sauce, and a slicce of sourdough bread", vegetarian: true, price: 3.89))
        dinerMenu.add(dessertMenu)
        
        dessertMenu.add(MenuItem(name: "Apple Pie", description: "Apple pie with a flakey crust, topped with vanilla ice cream", vegetarian: true, price: 1.59))
        
        let waitress = Waitress(allMenus: allMenus)
        waitress.printMenu()
        
    }
    
}
