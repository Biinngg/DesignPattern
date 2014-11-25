//
//  PancakeHouseIterator.swift
//  iterator
//
//  Created by Bing Liu on 11/25/14.
//  Copyright (c) 2014 UnixOSS. All rights reserved.
//

import Foundation

class PancakeHouseIterator: Iterator {
    
    let items: [MenuItem]
    var position: Int = 0
    
    init(items: [MenuItem]) {
        self.items = items
    }
    
    func next() -> MenuItem? {
        return items[position++]
    }
    
    func hasNext() -> Bool {
        if position >= items.count {
            return false
        } else {
            return true
        }
    }
    
}
