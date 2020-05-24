//
//  DetailMoreTableViewCell.swift
//  NihonGO
//
//  Created by Tong Minh Nguyet on 5/1/20.
//  Copyright © 2020 Tong Minh Nguyet. All rights reserved.
//

import UIKit
import iOSDropDown

class DetailMoreTableViewCell: UITableViewCell {

    @IBOutlet weak var detailView: UIView!
    @IBOutlet weak var vnLabel: UILabel!
    @IBOutlet weak var vnView: UIView!
    @IBOutlet weak var kanjiLabel: UILabel!
    @IBOutlet weak var kanaLabel: UILabel!
    @IBOutlet weak var romajiLabel: UILabel!
    
    func setupCell(dataRe: Topic?, isExpand: Bool) {
        
        if let data = dataRe {
            vnLabel.text = data.vn?.capitalized
            kanjiLabel.text = data.kanji
            kanaLabel.text = data.kana
            romajiLabel.text = data.romaji
        }
        
        vnView.layer.borderColor = UIColor.systemPink.cgColor
        vnView.layer.borderWidth = 2
        vnView.layer.cornerRadius = 5
        vnView.clipsToBounds = true
        
        kanjiLabel.isHidden = !isExpand
        kanaLabel.isHidden = !isExpand
        romajiLabel.isHidden = !isExpand
    }
    
}
