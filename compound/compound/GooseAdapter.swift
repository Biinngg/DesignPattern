//
//  GooseAdapter.swift
//  compound
//
//  Created by Bing Liu on 12/8/14.
//  Copyright (c) 2014 UnixOSS. All rights reserved.
//

import Foundation

class GooseAdapter: Quackable {
    
    let goose: Goose
    
    init(goose: Goose) {
        self.goose = goose
    }
    
    func quack() {
        goose.honk()
    }
    
}
