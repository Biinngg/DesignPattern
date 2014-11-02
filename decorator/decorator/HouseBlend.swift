//
//  HouseBlend.swift
//  Chapter3
//
//  Created by Bing Liu on 10/29/14.
//  Copyright (c) 2014 UnixOSS. All rights reserved.
//

import Foundation

public class HouseBlend: Beverage {
    
    override init() {
        super.init()
        description = "House Blend Coffee"
    }
    
    override public func cost() -> Double {
        return 0.89
    }
    
}
