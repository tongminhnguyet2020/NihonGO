//
//  DetailVocViewController.swift
//  NihonGO
//
//  Created by Tong Minh Nguyet on 4/29/20.
//  Copyright © 2020 Tong Minh Nguyet. All rights reserved.
//

import UIKit
import WebKit

class DetailVocViewController: BaseViewController {
    
    @IBOutlet weak var vocWebView: WKWebView!
    var data: Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigation(title: "Từ vựng Minnano Nihongo Bài \(data)")
        setupView()
        // Do any additional setup after loading the view.
    }

    func setupView() {
        let url = Bundle.main.url(forResource: "voc_\(data)", withExtension: "html")
        let request = URLRequest(url: url!)
        vocWebView.load(request)
        vocWebView.layer.borderColor = UIColor.systemPink.cgColor
        vocWebView.layer.borderWidth = 3
        vocWebView.layer.cornerRadius = 10
        vocWebView.clipsToBounds = true
    }

}
