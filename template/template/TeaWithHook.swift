//
//  TeaWithHook.swift
//  template
//
//  Created by Bing Liu on 11/21/14.
//  Copyright (c) 2014 UnixOSS. All rights reserved.
//

import Foundation

class TeaWithHook: CaffeineBeverageWithHook {
    
    override func brew() {
        println("Steeping the tea")
    }
    
    override func addCondiments() {
        println("Adding Lemon")
    }
    
    override func customerWantsCondiments() -> Bool {
        let answer = getUserInput()
        let range = answer.lowercaseString.rangeOfString("y")
        if range != nil && range!.startIndex == answer.startIndex {
            return true
        } else {
            return false
        }
    }
    
    private func getUserInput() -> String {
        var answer: String?
        println("Would you like lemon with your tea (y/n)? ")
        var keyboard = NSFileHandle.fileHandleWithStandardInput()
        var inputData = keyboard.availableData
        answer = NSString(data: inputData, encoding: NSUTF8StringEncoding)
        if let ans = answer {
            return ans;
        }
        return "no"
    }
    
}
