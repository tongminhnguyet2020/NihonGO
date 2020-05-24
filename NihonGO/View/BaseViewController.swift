//
//  BaseViewController.swift
//  NihonGO
//
//  Created by Tong Minh Nguyet on 4/28/20.
//  Copyright © 2020 Tong Minh Nguyet. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // setupNavigation()
        // Do any additional setup after loading the view.
    }
    
    func setupNavigation(title: String) {
        let viewNa = UIView(frame: CGRect(x: 0, y: 0, width: 30, height: 30))
        let buttonNa = UIButton(frame: CGRect(x: 0, y: 0, width: 30, height: 30))
        buttonNa.setImage(UIImage(named: "ic-menu"), for: UIControl.State.normal)
        buttonNa.addTarget(self, action: #selector(menuButtonTapped), for: .touchUpInside)
        buttonNa.tintColor = UIColor.white
        viewNa.addSubview(buttonNa)
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: viewNa)
        navigationController?.navigationBar.barTintColor = UIColor.systemPink
        
        navigationItem.title = title
        let textAttributes = [
            NSAttributedString.Key.foregroundColor: UIColor.white,
            NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 22)
        ]
        navigationController?.navigationBar.titleTextAttributes = textAttributes
    }
    
    @objc func menuButtonTapped() {
        let menu = LeftMenuViewController()
        menu.modalPresentationStyle = .overFullScreen
        present(menu, animated: false, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
