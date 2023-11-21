//
//  ViewController.swift
//  TestCounterMy
//
//  Created by Dmitry on 20.11.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resetButton: UIButton!
    @IBOutlet weak var logText: UITextView!
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var scoreLabel: UILabel!
    var score:Int = 0
    var todayDate = Date()
    
    func textLock() {
        logText.isEditable = false
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction private func zeroButton(_ sender: Any) {
        textLock()
        score = 0
        logText.text += "\n \(todayDate.fullDate) \nЗначение сброшено"
        scoreLabel.text = "\(score)"
    }
    @IBAction private func makeMinus(_ sender: Any) {
        if score != 0 {
            textLock()
            score -= 1
            logText.text += "\n \(todayDate.fullDate) \nЗначение изменено на -1"
            scoreLabel.text = "\(score)"
        } else {
            textLock()
            logText.text += "\n \(todayDate.fullDate) \nПопытка уменьшить значение счётчика ниже 0"
            
        }
        
    }
    @IBAction private func makePlus(_ sender: Any) {
        textLock()
        score += 1
        logText.text += "\n \(todayDate.fullDate) \nЗначение изменено на +1 "
        scoreLabel.text = "\(score)"
    }

    
}

