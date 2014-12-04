//
//  GumballMachine.swift
//  state
//
//  Created by Bing Liu on 12/2/14.
//  Copyright (c) 2014 UnixOSS. All rights reserved.
//

import Foundation

class GumballMachine {
    
    let soldOutState: State!
    let noQuarterState: State!
    let hasQuarterState: State!
    let soldState: State!
    let winnerState: State!
    var state: State!
    
    var count = 0
    
    var description: String {
        let desc = "\nMighty Gumball, Inc.\n" +
            "Swift-enabled Standing Gumball Model #2014\n" +
            "Inventory: \(count) gumballs\n"
        return count > 0 ? (desc + "Machine is waiting for quarter\n") : (desc + "Machine is sold out")
    }
    
    init(numberGumballs: Int) {
        soldOutState = SoldOutState(gumballMachine: self)
        noQuarterState = NoQuarterState(gumballMachine: self)
        hasQuarterState = HasQuarterState(gumballMachine: self)
        soldState = SoldState(gumballMachine: self)
        winnerState = WinnerState(gumballMachine: self)
        count = numberGumballs
        if numberGumballs > 0 {
            state = noQuarterState
        } else {
            state = soldOutState
        }
    }
    
    func insertQuarter() {
        state.insertQuarter()
    }
    
    func ejectQuarter() {
        state.ejectQuarter()
    }
    
    func turnCrank() {
        state.turnCrank()
        state.dispense()
    }
    
    func setState(state: State) {
        self.state = state
    }
    
    func releaseBall() {
        println("A gumball comes rolling out the slot...")
        if count != 0 {
            count--
        }
    }
    
    func refill(count: Int) {
        self.count = count
        state = noQuarterState
    }
    
}
