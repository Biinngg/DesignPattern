//
//  WinnerState.swift
//  state
//
//  Created by Bing Liu on 12/4/14.
//  Copyright (c) 2014 UnixOSS. All rights reserved.
//

import Foundation

class WinnerState: State {
    
    let gumballMachine: GumballMachine
    
    init(gumballMachine: GumballMachine) {
        self.gumballMachine = gumballMachine
    }
    
    func insertQuarter() {
        println("Please wait, we're already giving you a gumball")
    }
    
    func ejectQuarter() {
        println("Sorry, you already turned the crank")
    }
    
    func turnCrank() {
        println("Turning twice doesn't get you another gumball!")
    }
    
    func dispense() {
        println("YOU'RE A WINNER! You get two gumballs for your quarter")
        gumballMachine.releaseBall()
        if gumballMachine.count == 0 {
            gumballMachine.setState(gumballMachine.soldOutState)
        } else {
            gumballMachine.releaseBall()
            if gumballMachine.count > 0 {
                gumballMachine.setState(gumballMachine.noQuarterState)
            } else {
                println("Oops, out of gumballs!")
                gumballMachine.setState(gumballMachine.soldOutState)
            }
        }
    }
    
}
