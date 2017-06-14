//
//  ViewController.swift
//  Quiz
//
//  Created by Chris Jim on 26/05/2017.
//  Copyright © 2017 Big Nerd Ranch. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!
    
    
    let questions: [String] = [
        "What is the biggest risk?",
        "What is more important than numbers?",
        "What is 7+7?",
        "What is the capital of Vermont?",
        "What is cognac made from?"
    ]
    
    
    let answers: [String] = [
        "Not taking any risk at all",
        "Innovation",
        "14",
        "Montpelier",
        "Grapes"
    ]
    
    
    var currentQuestionIndex: Int = 0
    
    @IBAction func showNextQuestion(_ sender: UIButton) {
        currentQuestionIndex += 1
        if currentQuestionIndex == questions.count{
            currentQuestionIndex = 0
        }
        
        let question: String = questions[currentQuestionIndex]
        questionLabel.text = question
        answerLabel.text = "???"
        
        animateLabelTransitions()
    }
    
    @IBAction func showAnswer(_ sender: UIButton) {
        let answer: String = answers[currentQuestionIndex]
        answerLabel.text = answer
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = questions[currentQuestionIndex]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func animateLabelTransitions() {
   
        //animate the alpha
        UIView.animate(withDuration: 0.5, animations: {
            self.questionLabel.alpha = 1
        })
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        //set the label's initial alpha each time this view comes onscreen.
        questionLabel.alpha = 0
    }
    
}



