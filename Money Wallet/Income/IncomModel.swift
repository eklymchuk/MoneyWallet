//
//  IncomModel.swift
//  Money Wallet
//
//  Created by arh on 8/28/19.
//  Copyright © 2019 arh. All rights reserved.
//

import Foundation

class IncomModel {
    var incomeCash: Double = 0
    //var incomeCard: Double = 0
    var economy: Double = 0
    
    var incomeArray = [
    Income(name: "Salary", image: "money"),
    Income(name: "Bonus", image: "money"),
    Income(name: "Salary", image: "money")
    ]
}


class Income {
    var name: String
    var image: String
    
    init(name: String, image:String) {
        self.name = name
        self.image = image
    }
}
