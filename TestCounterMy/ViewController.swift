//
//  ViewController.swift
//  TestCounterMy
//
//  Created by Dmitry on 20.11.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak private var resetButton: UIButton!
    @IBOutlet weak private var logText: UITextView!
    @IBOutlet weak private var minusButton: UIButton!
    @IBOutlet weak private var plusButton: UIButton!
    @IBOutlet weak private var scoreLabel: UILabel!
   private var score:Int = 0
   private var todayDate = Date()
    
    override func viewDidLoad() {
        logText.isEditable = false
        super.viewDidLoad()
    }


    @IBAction private func zeroButton(_ sender: Any) {
        score = 0
        logText.text += "\n \(todayDate.fullDate) \nЗначение сброшено"
        scoreLabel.text = "\(score)"
    }
    @IBAction private func makeMinus(_ sender: Any) {
        if score != 0 {
            score -= 1
            logText.text += "\n \(todayDate.fullDate) \nЗначение изменено на -1"
            scoreLabel.text = "\(score)"
        } else {
            logText.text += "\n \(todayDate.fullDate) \nПопытка уменьшить значение счётчика ниже 0"
            
        }
        
    }
    @IBAction private func makePlus(_ sender: Any) {
        score += 1
        logText.text += "\n \(todayDate.fullDate) \nЗначение изменено на +1 "
        scoreLabel.text = "\(score)"
    }

    
}

