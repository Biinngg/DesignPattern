//
//  NYPizzaIngredientFactory.swift
//  factory
//
//  Created by Bing Liu on 11/3/14.
//  Copyright (c) 2014 UnixOSS. All rights reserved.
//

import Foundation

class NYPizzaIngredientFactory: PizzaIngredientFactory {
    
    func createDough() -> Dough {
        return ThinCrustDough()
    }
    
    func createSauce() -> Sauce {
        return MarinaraSauce()
    }
    
    func createCheese() -> Cheese {
        return ReggianoCheese()
    }
    
    func createVeggies() -> [Veggies] {
        return [Garlic(), Onion(), Mushroom(), RedPepper()]
    }
    
    func createPepperoni() -> Pepperoni {
        return SlicedPepperoni()
    }
    
    func createClam() -> Clams {
        return FreshClams()
    }
    
}
