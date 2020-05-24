//
//  LessonCollectionViewCell.swift
//  NihonGO
//
//  Created by Tong Minh Nguyet on 4/29/20.
//  Copyright © 2020 Tong Minh Nguyet. All rights reserved.
//

import UIKit

class LessonCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak private var nameLessonLabel: UILabel!
    @IBOutlet weak private var lessonImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Initialization code
    }
    func setupCellLesson(data: LessonResponse){
        nameLessonLabel.text = data.title
        lessonImage.image = UIImage(named: "totoro")
    }
}
