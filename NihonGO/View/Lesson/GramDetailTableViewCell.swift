//
//  GramDetailTableViewCell.swift
//  NihonGO
//
//  Created by Tong Minh Nguyet on 4/30/20.
//  Copyright © 2020 Tong Minh Nguyet. All rights reserved.
//

import UIKit

class GramDetailTableViewCell: UITableViewCell {

    @IBOutlet weak var grammarLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func setupGram(data: Lesson) {
        grammarLabel.text = data.grammar
        
    }

   
    
}
