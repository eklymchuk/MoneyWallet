//
//  IncomeViewController.swift
//  Money Wallet
//
//  Created by arh on 8/28/19.
//  Copyright © 2019 arh. All rights reserved.
//

import UIKit

class IncomeViewController: UIViewController {
    
    var model = IncomModel()
    
    override func viewDidLoad() {
//        incomeArray[0].historyArray.append(Money(value: -100.25))
    }
    
    @IBAction func addIncome(_ sender: UIButton) {
        let category = incomeArray[sender.tag]
        performSegue(withIdentifier: "addIncome", sender: category)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "addIncome",
            let vc = segue.destination as? Calculator {
            vc.category = sender as? Category
        }
    }
    

}
extension IncomeViewController: UITableViewDataSource, UITableViewDelegate {
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return incomeArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "income") as! IncomeTableViewCell
        
        cell.nameLabel.text = "\(incomeArray[indexPath.row].name)"
        cell.imageView?.image = UIImage(named: incomeArray[indexPath.row].image)
        cell.addButton.tag = indexPath.row
        
        return cell
    }
}
