//
//  CompositeIterator.swift
//  iterator
//
//  Created by Bing Liu on 11/28/14.
//  Copyright (c) 2014 UnixOSS. All rights reserved.
//

import Foundation

class CompositeIterator {
    
    let compositeIterator: CompositeIterator
    
    init(compositeIterator: CompositeIterator) {
        self.compositeIterator = compositeIterator
    }
    
    func next() -> CompositeIterator {
        
        
        
    }
    
    func hasNext() -> Bool {
        if compositeIterator.hasNext() {
            
        }
    }
    
}
