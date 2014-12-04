//
//  SoldOutState.swift
//  state
//
//  Created by Bing Liu on 12/3/14.
//  Copyright (c) 2014 UnixOSS. All rights reserved.
//

import Foundation

class SoldOutState: State {
    
    let gumballMachine: GumballMachine
    
    init(gumballMachine: GumballMachine) {
        self.gumballMachine = gumballMachine
    }
    
    func insertQuarter() {
        println("There are no gumball")
    }
    
    func ejectQuarter() {
        println("There are no gumball")
    }
    
    func turnCrank() {
        println("There are no gumball")
    }
    
    func dispense() {
        println("There are no gumball")
    }
    
}
