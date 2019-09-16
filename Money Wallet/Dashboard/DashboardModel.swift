//
//  DashboardModel.swift
//  Money Wallet
//
//  Created by student on 9/12/19.
//  Copyright © 2019 arh. All rights reserved.
//

import Foundation

class DashboardModel {
    var movedMoneyArray: [Category] {
        return incomeArray + expensesArray
    }
}
