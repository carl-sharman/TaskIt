//
//  AddTaskViewController.swift
//  TaskIt
//
//  Created by Carl Sharman on 20/01/2015.
//  Copyright (c) 2015 United Learning. All rights reserved.
//

import UIKit
import CoreData

class AddTaskViewController: UIViewController {
    
    @IBOutlet weak var taskTextField: UITextField!
    @IBOutlet weak var subtaskTextField: UITextField!
    @IBOutlet weak var dueDatePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func cancelButtonTapped(sender: UIButton) {
        // Dismiss modal view
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func addTaskButtonTapped(sender: UIButton) {
        // Access the data model context and description
        let appDelegate = (UIApplication.sharedApplication().delegate as AppDelegate)
        let managedObjectContext = appDelegate.managedObjectContext
        let entityDescription = NSEntityDescription.entityForName("TaskModel", inManagedObjectContext: managedObjectContext!)
        
        // Create new task
        let task = TaskModel(entity: entityDescription!, insertIntoManagedObjectContext: managedObjectContext!)
        task.task = taskTextField.text
        task.subtask = subtaskTextField.text
        task.date = dueDatePicker.date
        task.completed = false
        
        // Save entity changes
        appDelegate.saveContext()
        
        var request = NSFetchRequest(entityName: "TaskModel")
        var error: NSError? = nil
        var results: NSArray = managedObjectContext!.executeFetchRequest(request, error: &error)!
        
        for res in results {
            println(res)
        }
        
        // Dismiss this view
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}
