//
//  DownloadViewController.swift
//  NihonGO
//
//  Created by Tong Minh Nguyet on 5/24/20.
//  Copyright © 2020 Tong Minh Nguyet. All rights reserved.
//

import UIKit
import XLPagerTabStrip

enum TypeDownload {
    case audio
    case pdf
}

class DownloadViewController: BaseViewController, IndicatorInfoProvider {
    
    
    
    var type: TypeDownload = .audio
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        if type == .audio {
            return IndicatorInfo(title: "AUDIO")
        } else {
            return IndicatorInfo(title: "PDF")
        }
    }

}
