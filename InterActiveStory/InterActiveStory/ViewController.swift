//
//  ViewController.swift
//  InterActiveStory
//
//  Created by Aileen Taboy on 4/24/16.
//  Copyright © 2016 Mike. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "startAdventure"{
            
            if let pagecontroller = segue.destinationViewController as? PageController {
                pagecontroller.page = Adventure.story
                
            }
        
    }
    
    


}

}
