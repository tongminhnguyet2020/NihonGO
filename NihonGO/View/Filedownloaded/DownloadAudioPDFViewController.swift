//
//  File.swift
//  NihonGO
//
//  Created by Tong Minh Nguyet on 5/24/20.
//  Copyright © 2020 Tong Minh Nguyet. All rights reserved.
//

import Foundation
import XLPagerTabStrip


class DownloadAudioPDFViewController: ButtonBarPagerTabStripViewController {

    let vc1 = DownloadViewController()
    let vc2 = DownloadViewController()
    override func viewDidLoad() {
        config()
        setupViewControllers() 
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func config() {
        settings.style.buttonBarBackgroundColor = .white
        settings.style.selectedBarBackgroundColor = .systemPink
        settings.style.buttonBarItemBackgroundColor = .white
        settings.style.buttonBarItemFont = UIFont.systemFont(ofSize: 20)
        settings.style.selectedBarHeight = 3

        settings.style.buttonBarMinimumLineSpacing = 0
        settings.style.buttonBarItemTitleColor = .red
        settings.style.buttonBarItemsShouldFillAvailableWidth = true
        settings.style.buttonBarLeftContentInset = 0
        settings.style.buttonBarRightContentInset = 0
        
        buttonBarView?.backgroundColor = .white

        self.changeCurrentIndexProgressive = { [weak self] (oldCell: ButtonBarViewCell?, newCell: ButtonBarViewCell?,
                progressPercentage: CGFloat, changeCurrentIndex: Bool, animated: Bool) -> Void in
            oldCell?.label.textColor = UIColor.lightGray
            newCell?.label.textColor = UIColor.systemPink
        }
    }
    func setupViewControllers() {
        vc1.type = .audio
        vc2.type = .pdf
    }

    override func viewControllers(for pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {
        return [vc1, vc2]
    }
}
