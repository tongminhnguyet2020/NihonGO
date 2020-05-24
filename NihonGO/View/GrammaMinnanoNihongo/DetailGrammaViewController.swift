//
//  DetailGrammaViewController.swift
//  NihonGO
//
//  Created by Tong Minh Nguyet on 4/29/20.
//  Copyright © 2020 Tong Minh Nguyet. All rights reserved.
//

import UIKit
import WebKit

class DetailGrammaViewController: BaseViewController {

    @IBOutlet weak var grammaWKWebView: WKWebView!
    var data: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigation(title: "Ngữ pháp Minnano Nihongo Bài \(data)")
        setupView()
        // Do any additional setup after loading the view.
    }

    func setupView() {
        let url = Bundle.main.url(forResource: "gram_\(data)", withExtension: "html")
        let request = URLRequest(url: url!)
        grammaWKWebView.load(request)
        grammaWKWebView.layer.borderColor = UIColor.systemPink.cgColor
        grammaWKWebView.layer.borderWidth = 3
        grammaWKWebView.layer.cornerRadius = 10
        grammaWKWebView.clipsToBounds = true
        
    }
}
