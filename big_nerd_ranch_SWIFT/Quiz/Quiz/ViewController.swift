//
//  ViewController.swift
//  Quiz
//
//

import UIKit

class ViewController: UIViewController {

//    @IBOutlet var questionLabel: UILabel!
    
    @IBOutlet var currentQuestonLabel: UILabel!
    @IBOutlet var currentQuestionLabelCenterXConstraint: NSLayoutConstraint!
    
    
    @IBOutlet var nextQuestionLabel: UILabel!
    @IBOutlet var nextQuestionLabelCenterXConstraint: NSLayoutConstraint!
    
    @IBOutlet var answerLabel: UILabel!
    
    
    let questions: [String] = ["From what is cognac made?", "what is 7+7?","what is the capital of Vermont?"]
    
    let answers: [String] = ["Grapes", "14", "Montepelier"]
    
    var currentquestionIndex: Int = 0

    
    override func viewDidLoad() {
        super.viewDidLoad()
        let question = questions[currentquestionIndex]
        currentQuestonLabel.text = question
        
        updateOffScreenLabel()
    }
    
    
    @IBAction func showNextQuestion(sender: AnyObject) {
        ++currentquestionIndex
        if currentquestionIndex == questions.count {
            currentquestionIndex = 0
        }
        
        let question: String = questions[currentquestionIndex]
        nextQuestionLabel.text = question
        answerLabel.text =  "???"
        
        animatedLabelTransitions()
        
    }
    
    
    @IBAction func showAnswer(sender: AnyObject) {
        let answer: String = answers[currentquestionIndex]
        answerLabel.text = answer
        
        
    }
    
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        print("calling now")
        //Set the label's initial alpha 
        nextQuestionLabel.alpha = 0
    }
    
    
    func animatedLabelTransitions() {
        
        //Force any outstanding layout changes to occur 
        view.layoutIfNeeded()
        
        //Animate the alpha
        //and the center X constraints 
        
        let screenWidth = view.frame.width
        self.nextQuestionLabelCenterXConstraint.constant = 0
        self.currentQuestionLabelCenterXConstraint.constant += screenWidth

//        
//        UIView.animateWithDuration(0.5, delay: 0, options: [.CurveLinear], animations: {
//            self.currentQuestonLabel.alpha = 0
//            self.nextQuestionLabel.alpha = 1
//            
//            self.view.layoutIfNeeded()
//            
//            }, completion: {_ in
//                swap(&self.currentQuestonLabel, &self.nextQuestionLabel)
//                swap(&self.currentQuestionLabelCenterXConstraint, &self.nextQuestionLabelCenterXConstraint)
//                
//                self.updateOffScreenLabel()
//        })
        
        
        UIView.animateWithDuration(0.5, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 5, options: [.CurveEaseOut], animations:
            {self.currentQuestonLabel.alpha = 0
                self.nextQuestionLabel.alpha = 1
                self.loadViewIfNeeded()
            }, completion: {_ in
                swap(&self.currentQuestonLabel, &self.nextQuestionLabel)
                swap(&self.currentQuestionLabelCenterXConstraint, &self.nextQuestionLabelCenterXConstraint)
                self.updateOffScreenLabel()
        })
        
//        
//        UIView.animateWithDuration(1, delay: 1, usingSpringWithDamping: 0.5, initialSpringVelocity: 5, options: .CurveEaseInOut, animations: {
//            viewToAnimate.alpha = 0
//            }) { _ in
//                viewToAnimate.removeFromSuperview()
//        }
        
            
    }
    
    
    func updateOffScreenLabel() {
        let screenWidth = view.frame.width
        nextQuestionLabelCenterXConstraint.constant = -screenWidth
    }
    
    


}

