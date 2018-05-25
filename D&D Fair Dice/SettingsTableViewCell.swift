//
//  SettingsTableViewCell.swift
//  D&D Fair Dice
//
//  Created by Wills Blake on 5/24/18.
//  Copyright © 2018 Trap Card. All rights reserved.
//

import UIKit

class SettingsTableViewCell: UITableViewCell {
    
    //MARK: Outlet connections
    @IBOutlet weak var settingsLabel: UILabel!
    @IBOutlet weak var settingsColor: UIImageView!
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

