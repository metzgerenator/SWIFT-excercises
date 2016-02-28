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
    
    
    override func viewDidLoad() {
        //Always call the super implementaton of viewDidLoad
        super.viewDidLoad()
        print("ConversionViewController loaded its view.")
       }
    
    override func viewWillAppear(animated: Bool) {
        
        let calendar = NSCalendar.currentCalendar()
        let date = NSDate()
        let components = calendar.components(.Hour, fromDate: date)
        print(components.hour)
        
//        if (components.hour > 12){
//            self.view.backgroundColor = UIColor.blueColor()
//
//        }
//        
        
    }
    
    
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
        
        
        
//        let existingTextHasDecimalSeparator = textField.text?.rangeOfString(".")
//        let replacementTextHasDecimalSeparator = string.rangeOfString(".")
        
        let currentLocale = NSLocale.currentLocale()
        let decimalSeparator = currentLocale.objectForKey(NSLocaleDecimalSeparator) as! String
        
        let exisitngTextHasDecimalSeparator = textField.text?.rangeOfString(decimalSeparator)
        let replacemantTextHasDecimalSeparator = string.rangeOfString(decimalSeparator)
        
       
      
        
        if exisitngTextHasDecimalSeparator != nil && replacemantTextHasDecimalSeparator != nil {
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
        
//        if let text = textField.text, value = Double(text) {
//            fahrenheitValue = value
//        }
//        else {
//            fahrenheitValue = nil
//        }
        
        if let text = textField.text, number = numberFormatter.numberFromString(text){
            fahrenheitValue = number.doubleValue
        }
        else {
            fahrenheitValue = nil
        }
        
    }
   
    
    @IBAction func dismissKeyboard(sender: AnyObject) {
        textField.resignFirstResponder()
    }
    
}

