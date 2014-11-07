//
//  PizzaIngredientFactory.swift
//  factory
//
//  Created by Bing Liu on 11/3/14.
//  Copyright (c) 2014 UnixOSS. All rights reserved.
//

import Foundation

protocol PizzaIngredientFactory {
    
    func createDough() -> Dough
    func createSauce() -> Sauce
    func createCheese() -> Cheese
    func createVeggies() -> [Veggies]
    func createPepperoni() -> Pepperoni
    func createClam() -> Clams
    
}
