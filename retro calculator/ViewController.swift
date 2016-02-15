//
//  ViewController.swift
//  retro calculator
//
//  Created by Aileen Taboy on 2/14/16.
//  Copyright © 2016 Mike. All rights reserved.
//

import UIKit

//gives audio video play
import AVFoundation

class ViewController: UIViewController {
    
    var runningNumber = ""
    var leftValStr = ""
    var rightValStr = ""

    
    
    
    @IBOutlet weak var outputlbl: UILabel!
    
    var btnSound: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let path = NSBundle.mainBundle().pathForResource("btn", ofType: "wav")
        
        let soundUrl = NSURL(fileURLWithPath: path!)
        
        do {
            try btnSound = AVAudioPlayer(contentsOfURL: soundUrl)
            btnSound.prepareToPlay()

        } catch let err as NSError{
            print(err.debugDescription)
            
        }
        
        
    }

    
    @IBAction func numberPressed(btn: UIButton!) {
        
        btnSound.play()
        
        
    }


    @IBAction func onDividePressed(sender: AnyObject) {
    }
    
    
    
    @IBAction func onMultiplyPressed(sender: AnyObject) {
    }
    
    @IBAction func onSubtractPressed(sender: AnyObject) {
    }
    
    
    @IBAction func onAddPressed(sender: AnyObject) {
    }
    
    
    
    
    
}

