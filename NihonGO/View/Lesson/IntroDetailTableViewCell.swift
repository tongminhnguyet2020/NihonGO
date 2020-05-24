//
//  IntroDetailTableViewCell.swift
//  NihonGO
//
//  Created by Tong Minh Nguyet on 4/30/20.
//  Copyright © 2020 Tong Minh Nguyet. All rights reserved.
//

import UIKit

class IntroDetailTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLessonLabel: UILabel!
    @IBOutlet weak var detailLabel: UILabel!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setupCell(dataLesson: Lesson, dataTitle: LessonResponse){
        detailLabel.text = dataLesson.detail
        titleLessonLabel.text = dataTitle.title
    }

    
    @IBAction func downAudioButtonTouchUpInside(_ sender: Any) {
    }
    
    @IBAction func downPDFButtonTouchUpInside(_ sender: Any) {
    }
    
}
