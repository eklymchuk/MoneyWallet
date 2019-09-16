//
//  DashboardViewController.swift
//  Money Wallet
//
//  Created by arh on 8/8/19.
//  Copyright © 2019 arh. All rights reserved.
//

import UIKit

class DashboardViewController: UIViewController {

    var categoryLabel: String = ""
    var model = DashboardModel()
    
    @IBOutlet weak var tableView: UITableView!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }


}

extension DashboardViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return model.movedMoneyArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "dashboard") as! DashboardTableViewCell
        
        cell.categoryDashboardLabel.text = "\(model.movedMoneyArray[indexPath.row].name)"
        cell.movedMoney.text = "50 UAH"
        cell.imageView?.image = UIImage(named: model.movedMoneyArray[indexPath.row].image)
       
        
        return cell
    }
}
