//
//  ExpensesViewController.swift
//  Money Wallet
//
//  Created by Profi on 9/8/19.
//  Copyright © 2019 arh. All rights reserved.
//

import UIKit

class ExpensesViewController: UIViewController {
    var model = ExpensesModel()

   
    @IBAction func addExpenses(_ sender: UIButton) {
        let category = expensesArray[sender.tag]
        performSegue(withIdentifier: "addExpensesSeag", sender: category)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "addExpensesSeag",
            let vc = segue.destination as? Calculator {
            vc.category = sender as? Category
        }
        
    }
}


extension ExpensesViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return expensesArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "expenses") as! ExpensesTableViewCell
        
        cell.categoryLabel.text = "\(expensesArray[indexPath.row].name)"
        cell.imageView?.image = UIImage(named: expensesArray[indexPath.row].image)
//        cell.addButton.tag = indexPath.row
        return cell
    }
    
    
}

