//
//  DuckTestDrive.swift
//  adapter
//
//  Created by Bing Liu on 11/18/14.
//  Copyright (c) 2014 UnixOSS. All rights reserved.
//

import Foundation

public class DuckTestDrive {
    
    class public func test() {
        let duck = MallardDuck()
        let turkey = WildTurkey()
        let turkeyAdapter = TurkeyAdapter(turkey: turkey)
        let duckAdapter = DuckAdapter(duck: duck)
        
        println("The Turkey says...")
        testTurkey(turkey)
        
        println("\nThe Duck says...")
        testDuck(duck)
        
        println("\nThe TurkeyAdapter says...")
        testDuck(turkeyAdapter)
        
        println("\nThe DuckAdapter says...")
        testTurkey(duckAdapter)
    }
    
    class public func testDuck(duck: Duck) {
        duck.quack()
        duck.fly()
    }
    
    class public func testTurkey(turkey: Turkey) {
        turkey.gobble()
        turkey.fly()
    }
    
}
