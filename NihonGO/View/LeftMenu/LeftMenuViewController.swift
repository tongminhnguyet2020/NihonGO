//
//  LeftMenuViewController.swift
//  NihonGO
//
//  Created by Tong Minh Nguyet on 4/28/20.
//  Copyright © 2020 Tong Minh Nguyet. All rights reserved.
//

import UIKit

class LeftMenuViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    
    @IBOutlet weak var menuTableView: UITableView!
    var menuData: [Menu]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getDataMenu()
        callAPIMenu { [weak self] (menu) in
            self?.menuData = menu
            self?.menuTableView.reloadData()
        }
        // Do any additional setup after loading the view.
    }
    
    @IBAction func dismissButtonTapped() {
        dismiss(animated: false, completion: nil)
    }
    
    func getDataMenu() {
        menuTableView.register(cellType: CellMenuTableViewCell.self)
        menuTableView.dataSource = self
        menuTableView.delegate = self
        menuTableView.reloadData()
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuData?.count ?? 0
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = menuTableView?.dequeueReusableCell(cellType: CellMenuTableViewCell.self, indexPath: indexPath)
        cell?.displayCellMenu(dataCell: menuData?[indexPath.row])
        return cell ?? UITableViewCell()
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        dismiss(animated: false, completion: nil)
        if indexPath.row == 0 {
            let home = HomeAppViewController()
            let navi = UINavigationController(rootViewController: home)
            if let appDelegate = UIApplication.shared.delegate as? AppDelegate {
                appDelegate.setRootController(vc: navi)
            }
        } else if indexPath.row == 1 {
            let alphabet = MainAlphabetViewController()
            let navi = UINavigationController(rootViewController: alphabet)
            if let appDelegate = UIApplication.shared.delegate as? AppDelegate {
                appDelegate.setRootController(vc: navi)
            }
        } else if indexPath.row == 2 {
            let voc = VocMinnanoNihongoViewController()
            let navi = UINavigationController(rootViewController: voc)
            if let appDelegate = UIApplication.shared.delegate as? AppDelegate {
                appDelegate.setRootController(vc: navi)
            }
        } else if indexPath.row == 3 {
            let gramma = GrammaMinnanoNihongoViewController()
            let navi = UINavigationController(rootViewController: gramma)
            if let appDelegate = UIApplication.shared.delegate as? AppDelegate {
                appDelegate.setRootController(vc: navi)
            }
        } else if indexPath.row == 4 {
            let file = FiledownloadedViewController()
            let navi = UINavigationController(rootViewController: file)
            if let appDelegate = UIApplication.shared.delegate as? AppDelegate {
                appDelegate.setRootController(vc: navi)
            }
        } else if indexPath.row == 5 {
            let lesson = LessonViewController()
            let navi = UINavigationController(rootViewController: lesson)
            if let appDelegate = UIApplication.shared.delegate as? AppDelegate {
                appDelegate.setRootController(vc: navi)
            }
        } else {
            let more = MoreViewController()
            let navi = UINavigationController(rootViewController: more)
            if let appDelegate = UIApplication.shared.delegate as? AppDelegate {
                appDelegate.setRootController(vc: navi)
            }
        }
        
    }
}
