//
//  Command.swift
//  command
//
//  Created by Bing Liu on 11/12/14.
//  Copyright (c) 2014 UnixOSS. All rights reserved.
//

import Foundation

public protocol Command {
    
    func execute()
    func undo()
    
}