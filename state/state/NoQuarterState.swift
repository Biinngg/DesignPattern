//
//  NoQuarterState.swift
//  state
//
//  Created by Bing Liu on 12/1/14.
//  Copyright (c) 2014 UnixOSS. All rights reserved.
//

import Foundation

class NoQuarterState : State {
    
    let gumballMachine: GumballMachine
    
    init(gumballMachine: GumballMachine) {
        self.gumballMachine = gumballMachine
    }
    
    func insertQuarter() {
        println("You inserted a quarter")
        gumballMachine.setState(gumballMachine.hasQuarterState)
    }
    
    func ejectQuarter() {
        println("You haven't inserted a quarter")
    }
    
    func turnCrank() {
        println("You turned, but there's no quarter")
    }
    
    func dispense() {
        println("You need to pay first")
    }
    
}
