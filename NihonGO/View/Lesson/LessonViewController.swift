//
//  LessonViewController.swift
//  NihonGO
//
//  Created by Tong Minh Nguyet on 4/28/20.
//  Copyright © 2020 Tong Minh Nguyet. All rights reserved.
//

import UIKit

class LessonViewController: BaseViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var lessonCollectionView: UICollectionView!
    var dataLesson: [LessonResponse] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupNavigation(title: "Bài học")
        callAPILessonResponse { [weak self] (lesson) in
            print("lesson.count \(lesson.count)")
            self?.dataLesson = lesson
            self?.lessonCollectionView.reloadData()
        }
        getDataLesson()
        
        // Do any additional setup after loading the view.
    }

    func getDataLesson() {
        lessonCollectionView.register(cellType: LessonCollectionViewCell.self)
        lessonCollectionView.dataSource = self
        lessonCollectionView.delegate = self
        lessonCollectionView.reloadData()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        print("dataLesson.count \(dataLesson.count)")
        return dataLesson.count
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = (lessonCollectionView.frame.width - 50)/2
        return CGSize(width: size, height: size)
    }
       
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = lessonCollectionView.dequeueReusableCell(cellType: LessonCollectionViewCell.self, indexPath: indexPath)
        cell?.setupCellLesson(data: dataLesson[indexPath.row])
        return cell ?? UICollectionViewCell()
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let detail = DetailLessonViewController()
        detail.dataLessonResponse = dataLesson[indexPath.row]
        detail.numberLesson = indexPath.row + 1
        let nav = UINavigationController(rootViewController: detail)
        if let appdelegate = UIApplication.shared.delegate as? AppDelegate {
            appdelegate.setRootController(vc: nav)
        }
        
    }
    
    

}
