//
//  DetailAlphabetViewController.swift
//  NihonGO
//
//  Created by Tong Minh Nguyet on 4/28/20.
//  Copyright © 2020 Tong Minh Nguyet. All rights reserved.
//

import UIKit
import ACEDrawingView

class DetailAlphabetViewController: BaseViewController {

    @IBOutlet weak var drawingACEDrawingView: ACEDrawingView!
    @IBOutlet weak var hiraImageView: UIImageView!
    @IBOutlet weak var previousButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var checkButton: UIButton!
    
    var dataNow: Alphabet!
    var data: [Alphabet] = []
    var type: TypeAlphabet = .hiragana
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupData()
        setupNavigation(title: "Luyện viết")
        setupDetailAlphabetViewController()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        addDashLine()
    }
    
    func setupData() {
        data = data.filter({ $0.romanization != "" })
    }
    
    func setupDetailAlphabetViewController() {
        if let charId = dataNow?.romanization {
            if type == .hiragana {
                hiraImageView.image = UIImage(named: "image/hiragana/\(charId).PNG")
            } else {
                hiraImageView.image = UIImage(named: "image/katakana/\(charId).PNG")
            }
        }
    }
    
    func addDashLine() {
        view.layoutSubviews()
        view.layoutIfNeeded()
        let yourViewBorder = CAShapeLayer()
        yourViewBorder.strokeColor = UIColor.systemPink.cgColor
        yourViewBorder.lineDashPattern = [10, 5]
        yourViewBorder.frame = drawingACEDrawingView.bounds
        yourViewBorder.fillColor = nil
        let path = CGMutablePath()
        path.addLines(between: [CGPoint(x: 0, y: drawingACEDrawingView.frame.width/2), CGPoint(x: drawingACEDrawingView.frame.height, y: drawingACEDrawingView.frame.width/2)])
        path.addLines(between: [CGPoint(x: drawingACEDrawingView.frame.width/2, y: 0), CGPoint(x: drawingACEDrawingView.frame.width/2, y: drawingACEDrawingView.frame.height)])
        
        yourViewBorder.path = path
        drawingACEDrawingView.layer.addSublayer(yourViewBorder)
        drawingACEDrawingView.layer.borderColor = UIColor.systemPink.cgColor
        drawingACEDrawingView.layer.borderWidth = 2
    }
    
    @IBAction func previousButtonTouchUpInside(_ sender: Any) {
        if let currentIndex = data.firstIndex(where: { $0.romanization == dataNow.romanization }) {
            self.dataNow = data[max(0, currentIndex - 1)]
            setupDetailAlphabetViewController()
            drawingACEDrawingView.clear()
        }
    }
    
    @IBAction func resetButtonTouchUpInside(_ sender: Any) {
        drawingACEDrawingView.clear()
    }
    
    @IBAction func nextButtonTouchUpInside(_ sender: Any) {
        if let currentIndex = data.firstIndex(where: { $0.romanization == dataNow.romanization }) {
            if currentIndex == data.count - 1 {
                self.dataNow = data.first
            } else {
                self.dataNow = data[currentIndex + 1]
            }
            setupDetailAlphabetViewController()
            drawingACEDrawingView.clear()
        }
    }
    @IBAction func checkButtonTouchUpInside(_ sender: Any) {
        let test = TestAlphabetViewController()
        test.data = data
        let navi = UINavigationController(rootViewController: test)
        if let appDelegate = UIApplication.shared.delegate as? AppDelegate {
            appDelegate.setRootController(vc: navi)
        }
        
    }
    
}
