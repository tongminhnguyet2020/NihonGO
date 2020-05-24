//
//  AlphabetViewController.swift
//  NihonGO
//
//  Created by Tong Minh Nguyet on 4/28/20.
//  Copyright © 2020 Tong Minh Nguyet. All rights reserved.
//

import UIKit
import XLPagerTabStrip

enum TypeAlphabet {
       case hiragana
       case katakana
   }

class AlphabetViewController: BaseViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    var type: TypeAlphabet = .hiragana

    @IBOutlet weak var alphabetCollectionview: UICollectionView!
    
    var datas: [Alphabet]? {
        return type == .hiragana ? dataHira : dataKata
    }
    
    var dataHira: [Alphabet]?
    var dataKata: [Alphabet]?
    override func viewDidLoad() {
        super.viewDidLoad()
        getDataAlphabet()
        //setupNavigation(title: "Bảng chữ cái")
        callAPIAlphabet()
        // Do any additional setup after loading the view.
    }
    func callAPIAlphabet() {
        callAPIAlphabetHira { [weak self] (alphabet) in
            self?.dataHira = alphabet
            self?.alphabetCollectionview.reloadData()
        }
        callAPIAlphabetKata { [weak self] (alphabet) in
            self?.dataKata = alphabet
            self?.alphabetCollectionview.reloadData()
        }
    }
    func getDataAlphabet() {
        alphabetCollectionview.register(cellType: CellAphabetCollectionViewCell.self)
        alphabetCollectionview.dataSource = self
        alphabetCollectionview.delegate = self
        alphabetCollectionview.reloadData()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return datas?.count ?? 0
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = (alphabetCollectionview.frame.width - 40) / 5
        return CGSize(width: width, height: width + 15)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = alphabetCollectionview.dequeueReusableCell(cellType: CellAphabetCollectionViewCell.self, indexPath: indexPath)
        cell?.displayCellAlphabet(data: datas?[indexPath.row])
        return cell ?? UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let detail = DetailAlphabetViewController()
        detail.data = datas ?? []
        detail.dataNow = datas?[indexPath.row]
        detail.type = type
        
        let navi = UINavigationController(rootViewController: detail)
        if let appDelegate = UIApplication.shared.delegate as? AppDelegate {
            appDelegate.setRootController(vc: navi)
        }
    }
}

extension AlphabetViewController: IndicatorInfoProvider {
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        switch type {
        case .hiragana: return IndicatorInfo(title: "HIRAGANA")
        case .katakana: return IndicatorInfo(title: "KATAKANA")
        }
    }
}
