//
//  CellHomeCollectionViewCell.swift
//  NihonGO
//
//  Created by Tong Minh Nguyet on 4/27/20.
//  Copyright © 2020 Tong Minh Nguyet. All rights reserved.
//

import UIKit
import Alamofire
import MarqueeLabel

class CellHomeCollectionViewCell: UICollectionViewCell {

    @IBOutlet private weak var homeImageView: UIImageView!
    @IBOutlet weak var cellHomeView: UIView!
    @IBOutlet private weak var titleHomeLabel: UILabel!
    @IBOutlet private weak var textHomeLabel: MarqueeLabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func displayCellHome(data: Home?) {
        
        homeImageView.image = UIImage(named: data?.image ?? "")
        titleHomeLabel.text = data?.title
        textHomeLabel.text = data?.text
        
        cellHomeView.layer.cornerRadius = 5
        cellHomeView.clipsToBounds = true
    }
}
