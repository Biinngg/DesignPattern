//
//  Soy.swift
//  Chapter3
//
//  Created by Bing Liu on 10/29/14.
//  Copyright (c) 2014 UnixOSS. All rights reserved.
//

import Foundation

public class Soy: CondimentDecorator, CondimentDecoratorProtocol {
    
    let beverage: Beverage
    
    init(_ beverage: Beverage) {
        self.beverage = beverage
    }
    
    public override func getDescription() -> String {
        return beverage.getDescription() + ", Soy"
    }
    
    override public func cost() -> Double {
        switch beverage.getSize() {
        case .Venti:
            return 0.2 + beverage.cost()
        case .Grande:
            return 0.15 + beverage.cost()
        case .Tall:
            return 0.1 + beverage.cost()
        }
    }
    
}
