//
//  IncomeCollectionViewCell.swift
//  Money Wallet
//
//  Created by arh on 8/28/19.
//  Copyright © 2019 arh. All rights reserved.
//

import UIKit

class IncomeViewController: UITableViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "income") as! IncomeTableViewCell
        
        cell.nameLabel.text = "sdfsdfsd"
        
        return cell
    }
}
