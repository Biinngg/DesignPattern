//
//  Observer.swift
//  Chapter2
//
//  Created by Bing Liu on 10/27/14.
//  Copyright (c) 2014 UnixOSS. All rights reserved.
//

import Foundation

protocol Observer: class {
    func update(temp: Float, _ humidity: Float, _ pressure: Float)
}
