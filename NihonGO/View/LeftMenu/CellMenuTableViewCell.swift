//
//  CellMenuTableViewCell.swift
//  NihonGO
//
//  Created by Tong Minh Nguyet on 4/28/20.
//  Copyright © 2020 Tong Minh Nguyet. All rights reserved.
//

import UIKit

class CellMenuTableViewCell: UITableViewCell {

    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var titleMenuLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func displayCellMenu(dataCell: Menu?) {
        iconImageView.image = UIImage(named: dataCell?.image ?? "")
        titleMenuLabel.text = dataCell?.title
    }
}

    

