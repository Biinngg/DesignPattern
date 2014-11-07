//
//  ClamPizza.swift
//  factory
//
//  Created by Bing Liu on 11/6/14.
//  Copyright (c) 2014 UnixOSS. All rights reserved.
//

import Foundation

class ClamPizza: Pizza {
    
    let ingredientFactory: PizzaIngredientFactory
    
    init(ingredientFactory: PizzaIngredientFactory) {
        self.ingredientFactory = ingredientFactory
    }
    
    override func prepare() {
        println("Preparing \(name)")
        dough = ingredientFactory.createDough()
        sauce = ingredientFactory.createSauce()
        cheese = ingredientFactory.createCheese()
        clam = ingredientFactory.createClam()
    }
    
}
