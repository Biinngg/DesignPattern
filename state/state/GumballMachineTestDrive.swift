//
//  GumballMachineTestDrive.swift
//  state
//
//  Created by Bing Liu on 12/4/14.
//  Copyright (c) 2014 UnixOSS. All rights reserved.
//

import Foundation

class GumballMachineTestDrive {
    
    class func test() {
        let gumballMachine = GumballMachine(numberGumballs: 5)
        
        println(gumballMachine.description)
        
        gumballMachine.insertQuarter()
        gumballMachine.turnCrank()
        
        println(gumballMachine.description)
        
        gumballMachine.insertQuarter()
        gumballMachine.turnCrank()
        gumballMachine.insertQuarter()
        gumballMachine.turnCrank()
        
        println(gumballMachine.description)
    }
    
}
