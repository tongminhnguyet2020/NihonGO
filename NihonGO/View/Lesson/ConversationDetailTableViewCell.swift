//
//  ConversationDetailTableViewCell.swift
//  NihonGO
//
//  Created by Tong Minh Nguyet on 4/30/20.
//  Copyright © 2020 Tong Minh Nguyet. All rights reserved.
//

import UIKit

class ConversationDetailTableViewCell: UITableViewCell {
    
    @IBOutlet weak var kanaNameLabel: UILabel!
    @IBOutlet weak var romajiNameLabel: UILabel!
    @IBOutlet weak var kanaLabel: UILabel!
    @IBOutlet weak var romajiLabel: UILabel!
    @IBOutlet weak var vnLabel: UILabel!
    
    @IBOutlet weak var allView: UIView!
    
    
    func setupConversation(dataRe: DialogueOfLesson?) {
        if let data = dataRe {
            kanaNameLabel.text = data.kanaName
            romajiNameLabel.text = data.romaji_name
            kanaLabel.text = data.kana
            romajiLabel.text = data.romaji
            vnLabel.text = data.vn
        }
        
        allView.layer.borderColor = UIColor.systemPink.cgColor
        allView.layer.borderWidth = 2
        
    }

    @IBAction func audioButtonTouchUpInside(_ sender: Any) {
    }
    
    
}
