//
//  CountingDuckFactory.swift
//  compound
//
//  Created by Bing Liu on 12/8/14.
//  Copyright (c) 2014 UnixOSS. All rights reserved.
//

import Foundation

class CountingDuckFactory: AbstrackDuckFactory {
    
    func createMallardDuck() -> Quackable {
        return QuackCounter(duck: MallardDuck())
    }
    
    func createRedheadDuck() -> Quackable {
        return QuackCounter(duck: RedheadDuck())
    }
    
    func createDuckCall() -> Quackable {
        return QuackCounter(duck: DuckCall())
    }
    
    func createRubberDuck() -> Quackable {
        return QuackCounter(duck: RubberDuck())
    }
    
}
