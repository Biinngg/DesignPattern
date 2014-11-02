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
        
        switch type {
            case "cheese":
            return NYStyleCheesePizza()
            case "veggie":
            return NYStyleVeggiePizza()
            case "clam":
            return NYStyleClamPizza()
            case "pepperoni":
            return NYStylePepperoniPizza()
        default:
            return nil
        }
        
    }

}
