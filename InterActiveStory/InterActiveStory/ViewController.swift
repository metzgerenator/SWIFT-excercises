//
//  ViewController.swift
//  InterActiveStory
//
//  Created by Aileen Taboy on 4/24/16.
//  Copyright © 2016 Mike. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    enum Error: ErrorType {
        case noName
    }
    
    

    @IBOutlet var nameTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "startAdventure"{
            
           
            
            do{
                if let name = nameTextField.text {
                    if name == "" {
                        throw Error.noName
                    }
                    
                    if let pagecontroller = segue.destinationViewController as? PageController {
                        pagecontroller.page = Adventure.story(name)
                        
                    }
                    
                    
                    
                }
            } catch Error.noName {
                let alertController = UIAlertController(title: "Name Not Provided", message: "Provide a name to start your story!", preferredStyle: .Alert)
                let action = UIAlertAction(title: "ok", style: .Default, handler: nil)
                alertController.addAction(action)
                
                presentViewController(alertController, animated: true, completion: nil)
                
            } catch let error {
                fatalError("\(error)")
                
            }
            
            
            
        
    }
    
    


}

}
