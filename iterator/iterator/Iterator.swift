//
//  Iterator.swift
//  iterator
//
//  Created by Bing Liu on 11/25/14.
//  Copyright (c) 2014 UnixOSS. All rights reserved.
//

import Foundation

protocol Iterator {
    func hasNext() -> Bool
    func next() -> MenuItem?
}
