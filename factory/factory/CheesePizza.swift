//
//  CheesePizza.swift
//  factory
//
//  Created by Bing Liu on 11/4/14.
//  Copyright (c) 2014 UnixOSS. All rights reserved.
//

import Foundation

public class CheesePizza: Pizza {
    
    let ingredientFactory: PizzaIngredientFactory
    
    init(ingredientFactory: PizzaIngredientFactory) {
        self.ingredientFactory = ingredientFactory
    }
    
    public override func prepare() {
        println("Preparing \(name)")
        dough = ingredientFactory.createDough()
        sauce = ingredientFactory.createSauce()
        cheese = ingredientFactory.createCheese()
    }
   
}
