//
//  DuckSimulator.swift
//  compound
//
//  Created by Bing Liu on 12/8/14.
//  Copyright (c) 2014 UnixOSS. All rights reserved.
//

import Foundation

class DuckSimulator {
    
    class func simulate() {
        let duckFactory : AbstrackDuckFactory = CountingDuckFactory()
        let mallardDuck = duckFactory.createMallardDuck()
        let redheadDuck = duckFactory.createRedheadDuck()
        let duckCall = duckFactory.createDuckCall()
        let rubberDuck = duckFactory.createRubberDuck()
        let gooseDuck = GooseAdapter(goose: Goose())
        
        println("\nDuck Simulator: With Abstrack Factory")
        
        simulate(mallardDuck)
        simulate(redheadDuck)
        simulate(duckCall)
        simulate(rubberDuck)
        simulate(gooseDuck)
        
        println("The ducks quacked \(QuackCounter.getQuacks()) times")
    }
    
    private class func simulate(duck: Quackable) {
        duck.quack()
    }
    
}
