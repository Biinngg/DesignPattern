//
//  HasQuarterState.swift
//  state
//
//  Created by Bing Liu on 12/2/14.
//  Copyright (c) 2014 UnixOSS. All rights reserved.
//

import Foundation

class HasQuarterState: State {
    
    let gumballMachine: GumballMachine
    
    init(gumballMachine: GumballMachine) {
        self.gumballMachine = gumballMachine
    }
    
    func insertQuarter() {
        println("You can't insert another quarter")
    }
    
    func ejectQuarter() {
        println("Quarter returned")
        gumballMachine.setState(gumballMachine.noQuarterState)
    }
    
    func turnCrank() {
        println("You turned...")
        let winner: Int = Int(arc4random())%10
        if (winner == 0) && (gumballMachine.count > 1) {
            gumballMachine.setState(gumballMachine.winnerState)
        } else {
            gumballMachine.setState(gumballMachine.soldState)
        }
    }
    
    func dispense() {
        println("No gumball dispensed")
    }
    
}
