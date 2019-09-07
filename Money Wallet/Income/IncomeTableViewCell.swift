//
//  IncomeTableViewCell.swift
//  Money Wallet
//
//  Created by student on 9/3/19.
//  Copyright © 2019 arh. All rights reserved.
//

import UIKit

class IncomeTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var iconImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
