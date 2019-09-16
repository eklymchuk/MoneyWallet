//
//  Category.swift
//  Money Wallet
//
//  Created by student on 9/12/19.
//  Copyright © 2019 arh. All rights reserved.
//

import Foundation

class Category {
    var name: String
    var image: String
    var historyArray: [Money] = [Money]()
    
    init(name: String, image:String) {
        self.name = name
        self.image = image
    }
}

class Money {
    var value: Double
//    value = Double(resultLabel.text)?
    init(value: Double) {
        self.value = value
    }
}
