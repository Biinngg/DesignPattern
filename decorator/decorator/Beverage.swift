//
//  Beverage.swift
//  Chapter3
//
//  Created by Bing Liu on 10/29/14.
//  Copyright (c) 2014 UnixOSS. All rights reserved.
//

import Foundation

public enum Size {
    case Tall, Grande, Venti
}

public class Beverage {
    
    var description: String = "Unknown Beverage"
    var size: Size = .Venti
    
    public func cost() -> Double {
        return 0.0
    }
    
    public func getSize() -> Size {
        return size
    }
    
    public func getDescription() -> String {
        return description
    }
    
}
