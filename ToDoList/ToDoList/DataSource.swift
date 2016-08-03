//
//  DataSource.swift
//  ToDoList
//
//  Created by Michael Metzger  on 8/3/16.
//  Copyright © 2016 Mike. All rights reserved.
//

import Foundation
import UIKit
import CoreData

class DataSource: NSObject, UITableViewDataSource {
    
    
    
    let managedObjectContext = DataController.sharedInstance.managedObjectContext
    
    lazy var fetchedResultsController: TodoFetchedResultsController = {
        
        let controller = TodoFetchedResultsController(managedObjectContext: self.managedObjectContext, withTableView: self.tableView)
        
        
        return controller
        
    }()
    
    private let tableView: UITableView
    
    
    init(tableView: UITableView) {
        self.tableView = tableView
    }
    
    
    
    func objectAtIndexPath(indexPath: NSIndexPath) -> NSManagedObject {
        
        return fetchedResultsController.objectAtIndexPath(indexPath) as! NSManagedObject
        
    }
    
    
    //MARK: - UITableViewDataSource
    
     func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return fetchedResultsController.sections?.count ?? 0
    }
    
     func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        
        guard let section = fetchedResultsController.sections?[section] else {
            
            return 0
            
        }
        
        
        return section.numberOfObjects
    }
    
    
     func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath)
        
        return configureCell(cell, atIndexPath: indexPath)
        
    }
    
    
    
    private func configureCell(cell: UITableViewCell, atIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let item = fetchedResultsController.objectAtIndexPath(indexPath) as! Item
        
        cell.textLabel?.text = item.text
        return cell
    }
    
    
    
    
     func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        
        
        let item = fetchedResultsController.objectAtIndexPath(indexPath) as! NSManagedObject
        
        managedObjectContext.deleteObject(item)
        DataController.sharedInstance.saveContext()
        
    }
    
    
    
}