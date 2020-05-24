//
//  CellAphabetCollectionViewCell.swift
//  NihonGO
//
//  Created by Tong Minh Nguyet on 4/28/20.
//  Copyright © 2020 Tong Minh Nguyet. All rights reserved.
//

import UIKit

class CellAphabetCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var alphabetCellView: UIView!
    
    @IBOutlet weak var charLabel: UILabel!
    
    @IBOutlet weak var romanjiLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func displayCellAlphabet(data: Alphabet?) {
        alphabetCellView.layer.cornerRadius = 5
        alphabetCellView.layer.borderColor = UIColor.systemPink.cgColor
        alphabetCellView.layer.borderWidth = 1
        alphabetCellView.clipsToBounds = true
        
        charLabel.text = data?.character
        romanjiLabel.text = data?.romanization
        
    }

}
