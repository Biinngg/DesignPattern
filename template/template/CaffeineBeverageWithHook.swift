//
//  CaffeineBeverageWithHook.swift
//  template
//
//  Created by Bing Liu on 11/20/14.
//  Copyright (c) 2014 UnixOSS. All rights reserved.
//

import Foundation

class CaffeineBeverageWithHook {
    
    func prepareRecipe() {
        boilWater()
        brew()
        pourInCup()
        if customerWantsCondiments() {
            addCondiments()
        }
    }
    
    func brew() {
        fatalError("Not implemented.")
    }
    
    func addCondiments() {
        fatalError("Not implemented.")
    }
    
    func boilWater() {
        println("Boiling water")
    }
    
    func pourInCup() {
        println("Pouring into cup")
    }
    
    func customerWantsCondiments() -> Bool {
        return true;
    }
    
}
