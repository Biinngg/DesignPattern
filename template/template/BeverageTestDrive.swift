//
//  BeverageTestDrive.swift
//  template
//
//  Created by Bing Liu on 11/21/14.
//  Copyright (c) 2014 UnixOSS. All rights reserved.
//

import Foundation

class BeverageTestDrive {
    
    class func test() {
        let teaHook = TeaWithHook()
        let coffeeHook = CoffeeWithHook()
        
        println("\nMaking tea...")
        teaHook.prepareRecipe()
        
        println("\nMaking coffee...")
        coffeeHook.prepareRecipe()
    }
    
}
