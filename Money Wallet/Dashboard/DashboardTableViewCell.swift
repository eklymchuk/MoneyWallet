//
//  DashboardTableViewCell.swift
//  Money Wallet
//
//  Created by student on 9/12/19.
//  Copyright © 2019 arh. All rights reserved.
//

import UIKit

class DashboardTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var iconImage: UIImageView!
    
    @IBOutlet weak var categoryDashboardLabel: UILabel!
    
    @IBOutlet weak var movedMoney: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
