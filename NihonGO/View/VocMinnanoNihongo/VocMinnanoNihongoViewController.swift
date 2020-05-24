//
//  VocMinnanoNihongoViewController.swift
//  NihonGO
//
//  Created by Tong Minh Nguyet on 4/28/20.
//  Copyright © 2020 Tong Minh Nguyet. All rights reserved.
//

import UIKit

class VocMinnanoNihongoViewController: BaseViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var vocTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigation(title: "Từ vựng Minnano Nihongo")
        getData()
        // Do any additional setup after loading the view.
    }
    
    func getData() {
        vocTableView.register(cellType: VocTableViewCell.self)
        vocTableView.dataSource = self
        vocTableView.delegate = self
        vocTableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = vocTableView.dequeueReusableCell(cellType: VocTableViewCell.self, indexPath: indexPath)
        cell?.nameLabel.text = "Từ vựng bài \(indexPath.row + 1)"
        if indexPath.row % 2 == 0 {
            cell?.iconImageView.image = UIImage(named: "icons8-spa-flower")
        } else {
            cell?.iconImageView.image = UIImage(named: "ic-flower-sakura")
        }
        return cell ?? UITableViewCell()
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detail = DetailVocViewController()
        detail.data = indexPath.row + 1
        let navi = UINavigationController(rootViewController: detail)
        if let appdelegate = UIApplication.shared.delegate as? AppDelegate {
            appdelegate.setRootController(vc: navi)
        }
    }

}
