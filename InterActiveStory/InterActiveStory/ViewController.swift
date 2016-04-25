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
        
        let story = Page(story: .TouchDown)
        
        story.firstChoice = (title: "some Title", page: Page(story: .Droid))
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

