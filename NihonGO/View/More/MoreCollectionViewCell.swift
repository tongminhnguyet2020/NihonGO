//
//  MoreCollectionViewCell.swift
//  NihonGO
//
//  Created by Tong Minh Nguyet on 5/1/20.
//  Copyright © 2020 Tong Minh Nguyet. All rights reserved.
//

import UIKit

class MoreCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var moreImageView: UIImageView!
    @IBOutlet weak var titleMoreLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setupMoreCell(data: More?) {
        if let datacell = data {
            titleMoreLabel.text = datacell.title
            moreImageView.image = UIImage(named: datacell.image ?? "")
        }
    }

}
