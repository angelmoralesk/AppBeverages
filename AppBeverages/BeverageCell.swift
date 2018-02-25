//
//  BeverageCell.swift
//  AppBeverages
//
//  Created by Morales, Angel (MX - Mexico) on 25/02/18.
//  Copyright © 2018 TheKairuz. All rights reserved.
//

import UIKit

class BeverageCell: UITableViewCell {

    @IBOutlet weak var beverageImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
