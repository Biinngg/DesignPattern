//
//  Subject.swift
//  Chapter2
//
//  Created by Bing Liu on 10/27/14.
//  Copyright (c) 2014 UnixOSS. All rights reserved.
//

import Foundation

protocol Subject {
    func registerObserver(o: Observer)
    func removeObserver(o: Observer)
    func notifyObservers()
}
