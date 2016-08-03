//
//  Item.swift
//  ToDoList
//
//  Created by Michael Metzger  on 8/2/16.
//  Copyright © 2016 Mike. All rights reserved.
//

import Foundation
import CoreData


class Item: NSManagedObject {
    
    static let identifier = "Item"
    
    
    static let fetchRequest: NSFetchRequest = {
        
        
        let request = NSFetchRequest(entityName: Item.identifier)
        let sortDescriptor = NSSortDescriptor(key: "text", ascending: true)
        
        request.sortDescriptors = [sortDescriptor]
        
        return request
        
    }()


}
