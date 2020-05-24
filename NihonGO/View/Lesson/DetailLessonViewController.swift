//
//  DetailLessonViewController.swift
//  NihonGO
//
//  Created by Tong Minh Nguyet on 4/30/20.
//  Copyright © 2020 Tong Minh Nguyet. All rights reserved.
//

import UIKit

class DetailLessonViewController: BaseViewController, UITableViewDataSource, UITableViewDelegate {
    

    @IBOutlet weak var detailLessonTableView: UITableView!
    var numberLesson: Int = 0
    var dataLessonResponse: LessonResponse?
    var dataLesson: LessonArray?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTableView()
        
        setupNavigation(title: String(describing: dataLessonResponse?.title ?? ""))
        
        callAPILessonArray(number: numberLesson) { [weak self] (lesson) in
            self?.dataLesson = lesson
            self?.detailLessonTableView.reloadData()
        }
        
        // Do any additional setup after loading the view.
    }
    
    func setupTableView() {
        detailLessonTableView.register(cellType: IntroDetailTableViewCell.self)
        detailLessonTableView.register(cellType: GramDetailTableViewCell.self)
        detailLessonTableView.register(cellType: ConversationDetailTableViewCell.self)
        
        detailLessonTableView.rowHeight = UITableView.automaticDimension
        detailLessonTableView.estimatedRowHeight = 120
        detailLessonTableView.dataSource = self
        detailLessonTableView.delegate = self
        detailLessonTableView.reloadData()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        } else if section == 1 {
            return 1
        } else {
            print("dataLesson?.lesson?.first?.dialogue?.count ?? 0 \(dataLesson?.lesson?.first?.dialogue?.count ?? 0)")
            return dataLesson?.lesson?.first?.dialogue?.count ?? 0
        }
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if section == 0 || section == 1 {
            return 2
        } else {
            return 100
        }
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let conversationView = UIView(frame: CGRect(x: 0, y: 0, width: detailLessonTableView.frame.width, height: 85))
        let label1 = UILabel(frame: CGRect(x: 20, y: 20, width: conversationView.frame.width/3, height: 60))
        label1.text = "HỘI THOẠI"
        label1.font = UIFont.boldSystemFont(ofSize: 22)
        label1.textColor = UIColor.systemPink
        
       let label2 = UILabel(frame: CGRect(x: conversationView.frame.width/3 + 30, y: 20, width: conversationView.frame.width/2 + 30, height: 60))
        label2.text = "Nghe tất cả"
        label2.font = UIFont.boldSystemFont(ofSize: 18)
        label2.textColor = UIColor.systemPink
        
        let icon = UIButton(frame: CGRect(x: conversationView.frame.width*5/6, y: 20, width: 30, height: 60))
        icon.setImage(UIImage(named: "icons8-audio-52"), for: UIControl.State.normal)
        
        conversationView.addSubview(label1)
        conversationView.addSubview(label2)
        conversationView.addSubview(icon)
        if section == 2 {
            return conversationView
        }
        return UIView()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let data = (dataLesson?.lesson?.first), let dataLessonRe = dataLessonResponse {
            if indexPath.section == 0 {
                let cell = detailLessonTableView.dequeueReusableCell(cellType: IntroDetailTableViewCell.self, indexPath: indexPath)
                cell?.setupCell(dataLesson: data, dataTitle: dataLessonRe)
                return cell ?? UITableViewCell()
            } else if indexPath.section == 1{
                let cell = detailLessonTableView.dequeueReusableCell(cellType: GramDetailTableViewCell.self, indexPath: indexPath)
                cell?.setupGram(data: data)
                return cell ?? UITableViewCell()
            } else {
                let cell = detailLessonTableView.dequeueReusableCell(cellType: ConversationDetailTableViewCell.self, indexPath: indexPath)
                cell?.setupConversation(dataRe: (data.dialogue?[indexPath.row]))
                return cell ?? UITableViewCell()
            }
            
        }
        return UITableViewCell()
    }
    

}
