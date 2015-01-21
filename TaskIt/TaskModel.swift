//
//  TaskModel.swift
//  TaskIt
//
//  Created by Carl Sharman Work on 21/01/2015.
//  Copyright (c) 2015 United Learning. All rights reserved.
//

import Foundation
import CoreData

@objc(TaskModel)
class TaskModel: NSManagedObject {

    @NSManaged var completed: NSNumber
    @NSManaged var date: NSDate
    @NSManaged var subtask: String
    @NSManaged var task: String

}
