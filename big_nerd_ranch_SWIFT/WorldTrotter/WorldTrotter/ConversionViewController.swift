//
//  ConversionViewController.swift
//  WorldTrotter
//
//  Created by Aileen Taboy on 2/22/16.
//  Copyright © 2016 Mike. All rights reserved.
//

import UIKit

class ConversionViewController: UIViewController, UITextFieldDelegate{
    
    @IBOutlet var celsiusLabel: UILabel!
    
    @IBOutlet var textField: UITextField!
    
    
    var fahrenheitValue: Double?{
        didSet {
            if (textField.text?.rangeOfCharacterFromSet(NSCharacterSet.letterCharacterSet()) != nil) {
               textField?.text = ""
            } else {
                updateCelsiusLabel()
            }

            
            
        }
    }
    
    
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
//         string  =  NSCharacterSet.letterCharacterSet()
        
        
        
        let existingTextHasDecimalSeparator = textField.text?.rangeOfString(".")
        let replacementTextHasDecimalSeparator = string.rangeOfString(".")
        
       
      
        
        if existingTextHasDecimalSeparator != nil && replacementTextHasDecimalSeparator != nil {
            return false
        }else {
            return true
        }
        
    }
    
    
    var celsiusValue: Double? {
        if let value = fahrenheitValue {
            return(value - 32) * (5/9)
        }else {
            return nil
        }
    }
    
    let numberFormatter: NSNumberFormatter = {
        let nf = NSNumberFormatter()
        nf.numberStyle = .DecimalStyle
        nf.minimumFractionDigits = 0
        nf.maximumFractionDigits = 1
        return nf
    }()
    
    
    func updateCelsiusLabel() {
        if let value = celsiusValue {
            celsiusLabel.text = numberFormatter.stringFromNumber(value)
            
        }
        else {
            celsiusLabel.text = "???"
        }
        
        
    }
    
    
    
    
    @IBAction func fahrenheitFieldditingchanged(textField: UITextField) {
        
        if let text = textField.text, value = Double(text) {
            fahrenheitValue = value
        }
        else {
            fahrenheitValue = nil
        }
    }
   
    
    @IBAction func dismissKeyboard(sender: AnyObject) {
        textField.resignFirstResponder()
    }
    
}

