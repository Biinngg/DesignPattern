//
//  Waitress.swift
//  iterator
//
//  Created by Bing Liu on 11/25/14.
//  Copyright (c) 2014 UnixOSS. All rights reserved.
//

import Foundation

class Waitress {
    
    let pancakeHouseMenu: PancakeHouseMenu
    let dinerMenu: DinerMenu
    
    init(pancakeHouseMenu: PancakeHouseMenu, dinerMenu: DinerMenu) {
        self.pancakeHouseMenu = pancakeHouseMenu
        self.dinerMenu = dinerMenu
    }
    
    func printMenu() {
        let pancakeIterator = pancakeHouseMenu.createIterator()
        let dinerIterator = dinerMenu.createIterator()
        println("MENU\n----\nBREAKFAST")
        printMenu(pancakeIterator)
        println("\nLUNCH")
        printMenu(dinerIterator)
    }
    
    func printMenu(iterator: Iterator) {
        while iterator.hasNext() {
            let menuItem = iterator.next()!
            println("\(menuItem.getName()), \(menuItem.getPrice()) -- \(menuItem.getDescription())")
        }
    }
    
}
