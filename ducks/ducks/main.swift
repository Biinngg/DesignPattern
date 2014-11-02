//
//  main.swift
//  ducks
//
//  Created by Bing Liu on 11/2/14.
//  Copyright (c) 2014 UnixOSS. All rights reserved.
//

import Foundation

let mallard : Duck = MallardDuck()
mallard.performQuack()
mallard.performFly()

let model : Duck = ModelDuck()
model.performFly()
model.flyBehavior = FlyRocketPowered()
model.performFly()
