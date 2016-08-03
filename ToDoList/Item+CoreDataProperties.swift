//
//  Item+CoreDataProperties.swift
//  ToDoList
//
//  Created by Michael Metzger  on 8/2/16.
//  Copyright © 2016 Mike. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Item {

    @NSManaged var text: String?
    @NSManaged var completed: Bool

}
