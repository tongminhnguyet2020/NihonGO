//
//  CollectionView+Extension.swift
//  NihonGO
//
//  Created by Tong Minh Nguyet on 4/27/20.
//  Copyright © 2020 Tong Minh Nguyet. All rights reserved.
//

import Foundation
import Alamofire

extension UICollectionView {
    
    func register<T: UICollectionViewCell>(cellType: T.Type) {
        let nibName = String(describing: cellType)
        let cellId = UINib(nibName: nibName, bundle: nil)
        self.register(cellId, forCellWithReuseIdentifier: nibName)
    }
    
    func dequeueReusableCell<T: UICollectionViewCell>(cellType: T.Type, indexPath: IndexPath) -> T? {
        let nibName = String(describing: cellType)
        return self.dequeueReusableCell(withReuseIdentifier: nibName, for: indexPath) as? T
    }
    
}
