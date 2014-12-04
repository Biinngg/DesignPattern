//
//  State.swift
//  state
//
//  Created by Bing Liu on 12/1/14.
//  Copyright (c) 2014 UnixOSS. All rights reserved.
//

import Foundation

protocol State {
    
    func insertQuarter()
    func ejectQuarter()
    func turnCrank()
    func dispense()
    
}
