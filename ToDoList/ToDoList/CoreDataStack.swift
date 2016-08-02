//
//  CoreDataStack.swift
//  ToDoList
//
//  Created by Aileen Taboy on 8/1/16.
//  Copyright © 2016 Mike. All rights reserved.
//

import Foundation
import CoreData


class DataController: NSObject {
    
    
  private lazy var applicationDocumentsDirectory: NSURL = {
       
        let urls = NSFileManager.defaultManager().URLsForDirectory(.DocumentDirectory, inDomains: .UserDomainMask)
        
        return urls[urls.endIndex.predecessor()]
        
    }()
    
    private lazy var managedObjectModel: NSManagedObjectModel = {
       let modelURL = NSBundle.mainBundle().URLForResource("TodoList", withExtension:  "momd")!
        
        return NSManagedObjectModel(contentsOfURL: modelURL)!
        
        
    }()
    
    
    private lazy var persistentStoreCoordinator: NSPersistentStoreCoordinator = {
        let coordinator = NSPersistentStoreCoordinator(managedObjectModel: self.managedObjectModel)
        let url  = self.applicationDocumentsDirectory.URLByAppendingPathExtension("TodoList.sqlite")
        
        
        return coordinator
        
        do {
            
            try coordinator.addPersistentStoreWithType(NSSQLiteStoreType, configuration: nil, URL: url, options: nil)
            
        } catch {
            
            
            let userInfo: [String: AnyObject] = [
                
                NSLocalizedDescriptionKey: "Failed to initialize the application's saved data",
                NSLocalizedFailureReasonErrorKey: "There was an error creating or loading the applications's saved data",
                
                NSUnderlyingErrorKey: error as NSError
            ]
            
            let wrappedError = NSError(domain: "com.teamtreehouse.CoreDataError", code: 9999, userInfo: userInfo)
            print("Unresolved error \(wrappedError.userInfo)")
            abort()
            
        }
        
        
    } ()
    
    
    public lazy var managedObjectContext: NSManagedObjectContext = {
        
        let coordinator = self.persistentStoreCoordinator
        
        let managedObjectContext = NSManagedObjectContext(concurrencyType: .MainQueueConcurrencyType)
        
        managedObjectContext.persistentStoreCoordinator = coordinator
        
        return managedObjectContext
        
    }()
    
    
}