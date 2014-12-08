//
//  DuckFactory.swift
//  compound
//
//  Created by Bing Liu on 12/8/14.
//  Copyright (c) 2014 UnixOSS. All rights reserved.
//

import Foundation

class DuckFactory: AbstrackDuckFactory {
    
    func createMallardDuck() -> Quackable {
        return MallardDuck()
    }
    
    func createRedheadDuck() -> Quackable {
        return RedheadDuck()
    }
    
    func createDuckCall() -> Quackable {
        return DuckCall()
    }
    
    func createRubberDuck() -> Quackable {
        return RubberDuck()
    }
    
}
