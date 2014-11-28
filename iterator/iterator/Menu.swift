//
//  Menu.swift
//  iterator
//
//  Created by Bing Liu on 11/27/14.
//  Copyright (c) 2014 UnixOSS. All rights reserved.
//

import Foundation

class Menu: MenuComponent {
    
    var menuComponents = [MenuComponent]()
    let name: String
    let description: String
    
    init(name: String, description: String) {
        self.name = name
        self.description = description
    }
    
    override func add(menuComponent: MenuComponent) {
        menuComponents.append(menuComponent)
    }
    
    override func remove(menuComponent: MenuComponent) {
        for i in 0..<menuComponents.count {
            if menuComponents[i] === menuComponent {
                menuComponents.removeAtIndex(i)
            }
        }
    }
    
    override func getChild(i: Int) -> MenuComponent {
        return menuComponents[i]
    }
    
    override func getName() -> String {
        return name
    }
    
    override func getDescription() -> String {
        return description
    }
    
    override func print() {
        println("\n\(getName()), \(getDescription())")
        println("---------------------")
        
        for menuComponent in menuComponents {
            menuComponent.print()
        }
    }
    
}
