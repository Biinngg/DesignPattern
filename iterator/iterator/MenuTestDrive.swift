//
//  MenuTestDrive.swift
//  iterator
//
//  Created by Bing Liu on 11/25/14.
//  Copyright (c) 2014 UnixOSS. All rights reserved.
//

import Foundation

class MenuTestDrive {
    
    class func test() {
        let pancakeHouseMenu = PancakeHouseMenu()
        let dinerMenu = DinerMenu()
        
        let waitress = Waitress(pancakeHouseMenu: pancakeHouseMenu, dinerMenu: dinerMenu)
        waitress.printMenu()
    }
    
}
