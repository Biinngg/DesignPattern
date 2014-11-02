//
//  ChicagoStylePizzaStore.swift
//  Chapter4
//
//  Created by Bing Liu on 11/2/14.
//  Copyright (c) 2014 UnixOSS. All rights reserved.
//

import Cocoa

public class ChicagoStylePizzaStore: PizzaStore {

    public override func createPizza(type: String) -> Pizza? {
        
        switch type {
            case "cheese":
            return ChicagoStyleCheesePizza()
        default:
            return nil
        }
        
    }
    
}
