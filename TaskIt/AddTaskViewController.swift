//
//  AddTaskViewController.swift
//  TaskIt
//
//  Created by Carl Sharman on 20/01/2015.
//  Copyright (c) 2015 United Learning. All rights reserved.
//

import UIKit

class AddTaskViewController: UIViewController {

    var mainVC: ViewController!
    
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
        // Create new task, add to task array in main view controller and dismiss this view
        var task = TaskModel(task: self.taskTextField.text, subTask: self.subtaskTextField.text, date: self.dueDatePicker.date, completed: false)
        self.mainVC.baseArray[0].append(task)
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}
