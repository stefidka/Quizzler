//
//  ViewController.swift
//  Quizzler
//
//  Created by Stefka Vacheva on 8.01.21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    let quiz = [["A slug's blood is green.", "True"],
                ["Approximately one quarter of human bones are in the feet.", "True"],
                ["The total surface area of two human lungs is approximately 70 square metres.","True"]
    ]
    
    var questionNumber = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }

    @IBAction func answerButtonpressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle
        let actualAnswer = quiz[questionNumber][1]
        
        if userAnswer == actualAnswer {
            print("Right")
        } else {
            print("Wrong")
        }
        
        if questionNumber < quiz.count-1 {
            questionNumber += 1
        } else {
            questionNumber = 0
        }
       
        
        updateUI()
        
    }
    
    func updateUI() {
        
        questionLabel.text = quiz[questionNumber][0]
        
    }
}

