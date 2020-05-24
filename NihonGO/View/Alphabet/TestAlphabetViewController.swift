//
//  TestAlphabetViewController.swift
//  NihonGO
//
//  Created by Tong Minh Nguyet on 4/28/20.
//  Copyright © 2020 Tong Minh Nguyet. All rights reserved.
//

import UIKit
import Toast_Swift

class TestAlphabetViewController: BaseViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerTextField: UITextField!
    @IBOutlet weak var checkButton: UIButton!
    @IBOutlet weak var markTrueLabel: UILabel!
    @IBOutlet weak var helpButton: UIButton!
    @IBOutlet weak var markFalseLabel: UILabel!
    @IBOutlet weak var okButton: UIButton!
    var data: [Alphabet] = []
    var randomQuestion: Alphabet!
    var markTrue: Int = 0
    var markFalse: Int = 0
    var style = ToastStyle()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigation(title: "Kiểm tra Bảng chữ cái")
        setupData()
        setupQuestion()
        setupMark()
        okButton.isHidden = true
        // Do any additional setup after loading the view.
    }
    
    func setupData() {
        data = data.filter({ $0.romanization != "" })
    }
    
    func setupQuestion() {
        randomQuestion = data.randomElement()
        questionLabel.text = randomQuestion.character
    }
    
    func setupMark() {
        markTrueLabel.text = markTrue.description
        markFalseLabel.text = markFalse.description
    }

    @IBAction func checkButtonTouchUpInside(_ sender: Any) {
        if answerTextField.text == randomQuestion.romanization {
            let mark = markTrue + 1
            markTrue = mark
            setupMark()
            setupQuestion()
            answerTextField.text = ""
            style.backgroundColor = UIColor.systemPink
            style.titleFont = UIFont.boldSystemFont(ofSize: 20)
            self.view.makeToast(" Yeah, it's correct!! ", duration: 3.0, position: .center, style: style)
        } else {
            answerTextField.text = ""
            style.titleFont = UIFont.boldSystemFont(ofSize: 20)
            style.backgroundColor = UIColor.black
            self.view.makeToast(" Oh no, it's not correct...Let's try again!! ", duration: 3.0, position: .center, style: style)
        }
    }
    
    @IBAction func helpbuttontouchUpInside(_ sender: Any) {
        let mark = markFalse + 1
        markFalse = mark
        setupMark()
        answerTextField.text = randomQuestion.romanization
        style.titleFont = UIFont.boldSystemFont(ofSize: 20)
        style.backgroundColor = UIColor.blue
        self.view.makeToast("Fightting!! ", duration: 3.0, position: .center, style: style)
        okButton.isHidden = false
    }
    
    @IBAction func okButtonTouchUpInside(_ sender: Any) {
        setupQuestion()
        answerTextField.text = ""
        okButton.isHidden = true
    }
}
