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
        let redheadDuck = duckFactory.createRedheadDuck()
        let duckCall = duckFactory.createDuckCall()
        let rubberDuck = duckFactory.createRubberDuck()
        let gooseDuck = GooseAdapter(goose: Goose())
        println("\nDuck Simulator: With Composite - Flocks")
        
        let flockOfDucks = Flock()
        
        flockOfDucks.add(redheadDuck)
        flockOfDucks.add(duckCall)
        flockOfDucks.add(rubberDuck)
        flockOfDucks.add(gooseDuck)
        
        let flockOfMallards = Flock()
        
        let mallardOne = duckFactory.createMallardDuck()
        let mallardTwo = duckFactory.createMallardDuck()
        let mallardThree = duckFactory.createMallardDuck()
        let mallardFour = duckFactory.createMallardDuck()
        
        flockOfMallards.add(mallardOne)
        flockOfMallards.add(mallardTwo)
        flockOfMallards.add(mallardThree)
        flockOfMallards.add(mallardFour)
        
        flockOfDucks.add(flockOfMallards)
        
        println("\nDuck Simulator: With Observer")
        let quackologist = Quackologist()
        flockOfDucks.registerObserver(quackologist)
        
        simulate(flockOfDucks)
        
        println("\nDuck Simulator: Mallard Flock Simulation")
        simulate(flockOfMallards)
        
        println("The ducks quacked \(QuackCounter.getQuacks()) times")
    }
    
    private class func simulate(duck: Quackable) {
        duck.quack()
    }
    
}
