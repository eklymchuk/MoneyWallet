//
//  ExpensesModel.swift
//  Money Wallet
//
//  Created by arh on 8/28/19.
//  Copyright © 2019 arh. All rights reserved.
//

import Foundation

class ExpensesModel {
    var expensesCash: Double = 0
    var expensesCard: Double = 0
    var expensesEconomy: Double = 0

//    var expensesArray = ["Food","Home","Cafe","Car","Transport","Party","Health","Communication","Clothing","Other"]
    var expensesArray = [
        Expenses(name: "Food", image: "money"),
        Expenses(name: "Home", image: "money"),
        Expenses(name: "Cafe", image: "money"),
        Expenses(name: "Car", image: "money"),
        Expenses(name: "Transport", image: "money"),
        Expenses(name: "Party", image: "money"),
        Expenses(name: "Health", image: "money"),
        Expenses(name: "Communication", image: "money"),
        Expenses(name: "Clothing", image: "money"),
        Expenses(name: "Other", image: "money")
    ]
}

class Expenses {
    var name: String
    var image: String
    
    init(name: String, image:String) {
        self.name = name
        self.image = image
    }
}
