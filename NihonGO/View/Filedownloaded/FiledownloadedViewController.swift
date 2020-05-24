//
//  FiledownloadedViewController.swift
//  NihonGO
//
//  Created by Tong Minh Nguyet on 4/28/20.
//  Copyright © 2020 Tong Minh Nguyet. All rights reserved.
//

import UIKit

class FiledownloadedViewController: BaseViewController {
    
    let tabBar = DownloadAudioPDFViewController()
    @IBOutlet private weak var containerView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigation(title: "Danh sách file")
        setupTabBar()
        // Do any additional setup after loading the view.
    }

    func setupTabBar() {
        self.addChild(tabBar)
        self.containerView.addSubview(tabBar.view)
        tabBar.didMove(toParent: self)
    }
        
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tabBar.view.frame = containerView.bounds
    }

}
