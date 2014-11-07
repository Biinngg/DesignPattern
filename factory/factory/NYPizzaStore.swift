//
//  NYPizzaStore.swift
//  Chapter4
//
//  Created by Bing Liu on 11/2/14.
//  Copyright (c) 2014 UnixOSS. All rights reserved.
//

import Cocoa

public class NYPizzaStore: PizzaStore {
    
    public override func createPizza(type: String) -> Pizza? {
        var pizza: Pizza?
        let ingredientFactory: PizzaIngredientFactory = NYPizzaIngredientFactory()
        switch type {
            case "cheese":
            pizza = CheesePizza(ingredientFactory: ingredientFactory)
            pizza!.name = "New York Style Cheese Pizza"
            case "veggie":
            pizza = VeggiePizza(ingredientFactory: ingredientFactory)
            pizza!.name = "New York Style Veggie Pizza"
            case "clam":
            pizza = ClamPizza(ingredientFactory: ingredientFactory)
            pizza!.name = "New York Style Clam Pizza"
            case "pepperoni":
            pizza = PepperoniPizza(ingredientFactory: ingredientFactory)
            pizza!.name = "New York Style Pepperoni Pizza"
        default:
            pizza = nil
        }
        return pizza
    }

}
