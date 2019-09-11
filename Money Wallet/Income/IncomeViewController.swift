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
    
    @IBAction func addIncome(_ sender: UIButton) {
        let category = model.incomeArray[sender.tag]
        performSegue(withIdentifier: "addIncome", sender: category)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "addIncome",
            let vc = segue.destination as? Calculator {
            vc.category = sender as! String
        }
    }
    

}
extension IncomeViewController: UITableViewDataSource, UITableViewDelegate {
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return model.incomeArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "income") as! IncomeTableViewCell
        
        cell.nameLabel.text = "\(model.incomeArray[indexPath.row].name)"
        cell.imageView?.image = UIImage(named: model.incomeArray[indexPath.row].image)
        cell.addButton.tag = indexPath.row
        
        return cell
    }
}
