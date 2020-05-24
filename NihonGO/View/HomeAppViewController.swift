//
//  HomeAppViewController.swift
//  NihonGO
//
//  Created by Tong Minh Nguyet on 4/27/20.
//  Copyright © 2020 Tong Minh Nguyet. All rights reserved.
//

import UIKit
import Alamofire

class HomeAppViewController: BaseViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var homeCollectionView: UICollectionView!
    var data: [Home]?
    override func viewDidLoad() {
        super.viewDidLoad()
        getDataHome()
        setupNavigation(title: "Tiếng Nhật cơ bản")
        callAPIHome { [weak self](home) in
            self?.data = home
            self?.homeCollectionView.reloadData()
        }
        
        // Do any additional setup after loading the view.
    }

    func getDataHome() {
        homeCollectionView.register(cellType: CellHomeCollectionViewCell.self)
        homeCollectionView.dataSource = self
        homeCollectionView.delegate = self
        homeCollectionView.reloadData()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data?.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = (homeCollectionView.frame.width - 40)/2
        return CGSize(width: width, height: width)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = homeCollectionView.dequeueReusableCell(cellType: CellHomeCollectionViewCell.self, indexPath: indexPath) {
            cell.displayCellHome(data: data?[indexPath.row])
            return cell
            
        }
        return UICollectionViewCell()
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            let alphabet = MainAlphabetViewController()
            let navi = UINavigationController(rootViewController: alphabet)
            if let appDelegate = UIApplication.shared.delegate as? AppDelegate {
                appDelegate.setRootController(vc: navi)
            }
        } else if indexPath.row == 1 {
            let voc = VocMinnanoNihongoViewController()
            let navi = UINavigationController(rootViewController: voc)
            if let appDelegate = UIApplication.shared.delegate as? AppDelegate {
                appDelegate.setRootController(vc: navi)
            }
        } else if indexPath.row == 2 {
            let lesson = LessonViewController()
            let navi = UINavigationController(rootViewController: lesson)
            if let appDelegate = UIApplication.shared.delegate as? AppDelegate {
                appDelegate.setRootController(vc: navi)
            }
        } else if indexPath.row == 3 {
            let gramma = GrammaMinnanoNihongoViewController()
            let navi = UINavigationController(rootViewController: gramma)
            if let appDelegate = UIApplication.shared.delegate as? AppDelegate {
                appDelegate.setRootController(vc: navi)
            }
        } else if indexPath.row == 4 {
            let file = FiledownloadedViewController()
            let navi = UINavigationController(rootViewController: file)
            if let appDelegate = UIApplication.shared.delegate as? AppDelegate {
                appDelegate.setRootController(vc: navi)
            }
        } else {
            let more = MoreViewController()
            let navi = UINavigationController(rootViewController: more)
            if let appDelegate = UIApplication.shared.delegate as? AppDelegate {
                appDelegate.setRootController(vc: navi)
            }
        }
    }
    

}
