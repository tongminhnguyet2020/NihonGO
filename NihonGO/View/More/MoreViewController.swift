//
//  MoreViewController.swift
//  NihonGO
//
//  Created by Tong Minh Nguyet on 4/28/20.
//  Copyright © 2020 Tong Minh Nguyet. All rights reserved.
//

import UIKit

class MoreViewController: BaseViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var moreCollectionView: UICollectionView!
    var data: [More]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupNavigation(title: "Tự Vựng")
        callAPIMore { (more) in
            self.data = more
            self.moreCollectionView.reloadData()
        }
        setupMoreCollectionView()
        
        // Do any additional setup after loading the view.
    }
    
    func setupMoreCollectionView() {
        moreCollectionView.register(cellType: MoreCollectionViewCell.self)
        moreCollectionView.dataSource = self
        moreCollectionView.delegate = self
        moreCollectionView.reloadData()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        print("data?.count ?? 0\(data?.count ?? 0)")
        return data?.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = (collectionView.frame.width - 80)/3
        return CGSize(width: size, height: size + 50)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let datacell = data {
            let cell = moreCollectionView.dequeueReusableCell(cellType: MoreCollectionViewCell.self, indexPath: indexPath)
            cell?.setupMoreCell(data: datacell[indexPath.row])
            return cell ?? UICollectionViewCell()
        }
        return UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let detail = DetailMoreViewController()
        detail.dataMore = data?[indexPath.row]
        
        let nav = UINavigationController(rootViewController: detail)
        if let appdelegate = UIApplication.shared.delegate as? AppDelegate {
            appdelegate.setRootController(vc: nav)
        }
    }

}
