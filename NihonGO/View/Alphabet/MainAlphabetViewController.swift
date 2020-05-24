//
//  MainAlphabetViewController.swift
//  NihonGO
//
//  Created by Tong Minh Nguyet on 4/29/20.
//  Copyright © 2020 Tong Minh Nguyet. All rights reserved.
//

import UIKit

class MainAlphabetViewController: BaseViewController {

    let tabBar = AlphabetHiraKataViewController()
    @IBOutlet private weak var containerView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigation(title: "Bảng chữ cái")
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
