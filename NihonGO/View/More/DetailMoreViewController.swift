//
//  DetailMoreViewController.swift
//  NihonGO
//
//  Created by Tong Minh Nguyet on 5/1/20.
//  Copyright © 2020 Tong Minh Nguyet. All rights reserved.
//

import UIKit

class DetailMoreViewController: BaseViewController, UITableViewDataSource, UITableViewDelegate {
    
    

    @IBOutlet weak var detailMoreTableView: UITableView!
    var dataMore: More?
    var dataTopic: [Topic] = []
    
    private var selectedIndex: IndexPath?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigation(title: "Từ vựng nhóm ")
        
        callAPITopic(id: dataMore?.id ?? "") { [weak self] topics in
            print("topics.count \(topics.count)")
            self?.dataTopic = topics
            self?.detailMoreTableView.reloadData()
        }
        setupTableView()
        // Do any additional setup after loading the view.
    }
    
    func setupTableView() {
        detailMoreTableView.register(cellType: DetailMoreTableViewCell.self)
        detailMoreTableView.dataSource = self
        detailMoreTableView.delegate = self
        detailMoreTableView.reloadData()
        
        detailMoreTableView.rowHeight = UITableView.automaticDimension
        detailMoreTableView.estimatedRowHeight = 120
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataTopic.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = detailMoreTableView.dequeueReusableCell(cellType: DetailMoreTableViewCell.self, indexPath: indexPath)
        let isExpand = indexPath == selectedIndex
        cell?.setupCell(dataRe: dataTopic[indexPath.row], isExpand: isExpand)
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        var rows = [indexPath]
        if selectedIndex == indexPath {
            selectedIndex = nil
        } else {
            if let selectedIndexX = selectedIndex {
                rows.append(selectedIndexX)
            }
            selectedIndex = indexPath
        }
        tableView.reloadRows(at: rows, with: UITableView.RowAnimation.automatic)
    }
}
