//
//  TodolistController.swift
//  ToDoList
//
//  Created by Michael Metzger  on 8/2/16.
//  Copyright © 2016 Mike. All rights reserved.
//

import UIKit
import CoreData

class TodolistController: UITableViewController, NSFetchedResultsControllerDelegate {
    
    
   
    lazy var dataSource: DataSource = {
        
        return DataSource(tableView: self.tableView)
        
    }()
  

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = dataSource
      

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Navigation 
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showItem" {
            
            guard let destinationController = segue.destinationViewController as? DetailViewController, indexPath = tableView.indexPathForSelectedRow else { return }
            
            
            let item = dataSource.objectAtIndexPath(indexPath) as! Item
            
            destinationController.item = item
            
        }
    }
    

    // MARK: - Table view data source

 
    
    
   
    
  
    //MARK: - UITableViewDelegate
    
    override func tableView(tableView: UITableView, editingStyleForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCellEditingStyle {
        return .Delete
    }



   
}
