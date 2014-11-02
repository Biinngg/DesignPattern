//
//  PizzaStore.swift
//  Chapter4
//
//  Created by Bing Liu on 10/31/14.
//  Copyright (c) 2014 UnixOSS. All rights reserved.
//

import Foundation

public class PizzaStore {
    
    public func orderPizza(type: String) -> Pizza? {
        if let pizza = createPizza(type) {
            pizza.prepare()
            pizza.bake()
            pizza.cut()
            pizza.box()
            return pizza
        }
        return nil
    }
    
    public func createPizza(type: String) -> Pizza? {
        fatalError("This method must be overridden")
    }
    
}
