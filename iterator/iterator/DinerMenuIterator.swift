//
//  DinerMenuIterator.swift
//  iterator
//
//  Created by Bing Liu on 11/25/14.
//  Copyright (c) 2014 UnixOSS. All rights reserved.
//

import Foundation

class dinerMenuIterator: Iterator {
    
    let items: [MenuItem?]
    var position: Int = 0
    
    init(items: [MenuItem?]) {
        self.items = items
    }
    
    func next() -> MenuItem? {
        let menuItem = items[position++]
        return menuItem
    }
    
    func hasNext() -> Bool {
        if ((position >= items.count) || (items[position] == nil)) {
            return false
        } else {
            return true
        }
    }
    
}
