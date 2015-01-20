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
    var mainVC: ViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.taskTextField.text = detailTaskModel.task
        self.subtaskTextField.text = detailTaskModel.subTask
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
        // Update the task array 
        var task = TaskModel(task: self.taskTextField.text, subTask: self.subtaskTextField.text, date: self.dueDatePicker.date, completed: false)
        
        self.mainVC.baseArray[0][mainVC.tableView.indexPathForSelectedRow()!.row] = task
        
        // Dismiss view from within the navigation stack
        self.navigationController?.popViewControllerAnimated(true)
    }
    
}
