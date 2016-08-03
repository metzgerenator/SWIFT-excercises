//
//  DetailViewController.swift
//  ToDoList
//
//  Created by Michael Metzger  on 8/3/16.
//  Copyright © 2016 Mike. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var textField: UITextField!
    
    
    var item: Item?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let item = item else { fatalError("Cannot show detail without an item") }
        
        textField.text = item.text

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func save(sender: AnyObject) {
        
        
        if let item = item {
            item.text = textField.text
            DataController.sharedInstance.saveContext()
            
            self.navigationController?.popViewControllerAnimated(true)
        }
        
        
        
        
    }

}
