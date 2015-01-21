//
//  TaskDetailViewController.swift
//  TaskIt
//
//  Created by Carl Sharman on 19/01/2015.
//  Copyright (c) 2015 United Learning. All rights reserved.
//

import UIKit

class TaskDetailViewController: UIViewController {

    @IBOutlet weak var taskTextField: UITextField!
    @IBOutlet weak var subtaskTextField: UITextField!
    @IBOutlet weak var dueDatePicker: UIDatePicker!
    
    var detailTaskModel: TaskModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.taskTextField.text = detailTaskModel.task
        self.subtaskTextField.text = detailTaskModel.subtask
        self.dueDatePicker.date = detailTaskModel.date
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func cancelButtonTapped(sender: UIBarButtonItem) {
        // Dismiss view from within navigation stack
        self.navigationController?.popViewControllerAnimated(true)
    }
    
    @IBAction func doneBarButtonItemPressed(sender: UIBarButtonItem) {
        
        // Update the task in the modl
        let  appDelegate = (UIApplication.sharedApplication().delegate as AppDelegate)
        self.detailTaskModel.task = self.taskTextField.text
        self.detailTaskModel.subtask = self.subtaskTextField.text
        self.detailTaskModel.date = self.dueDatePicker.date
        self.detailTaskModel.completed = self.detailTaskModel.completed
        
        appDelegate.saveContext()
        
        // Dismiss view from within the navigation stack
        self.navigationController?.popViewControllerAnimated(true)
    }
    
}
