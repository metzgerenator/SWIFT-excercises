//
//  ViewController.swift
//  Quiz
//
//  Created by Aileen Taboy on 2/20/16.
//  Copyright © 2016 Mike. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var answerLabel: UILabel!
    
    
    let questions: [String] = ["From what is cognac made?", "what is 7+7?","what is the capital of Vermont?"]
    
    let answers: [String] = ["Grapes", "14", "Montepelier"]
    
    var currentquestionIndex: Int = 0

    
    
    @IBAction func showNextQuestion(sender: AnyObject) {
        ++currentquestionIndex
        if currentquestionIndex == questions.count {
            currentquestionIndex = 0
        }
        
        let question: String = questions[currentquestionIndex]
        questionLabel.text = question
        answerLabel.text =  "???"
        
        
        
    }
    
    
    @IBAction func showAnswer(sender: AnyObject) {
        let answer: String = answers[currentquestionIndex]
        answerLabel.text = answer
        
        
    }


}

