//
//  EditingTaskViewController.swift
//  to-do list
//
//  Created by Mac on 24.08.2021.
//  Copyright © 2021 Mac. All rights reserved.
//

import UIKit

class EditingTaskViewController: UIViewController{
    @IBOutlet weak var
    
    TaskTextField: UITextField!
//
    @IBOutlet weak var data1: UILabel!

    @IBOutlet weak var data2: UILabel!
    @IBOutlet weak var calender1: UIDatePicker!

    @IBOutlet weak var calender2: UIDatePicker!

    var data = ""
    var taskarray = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        TaskTextField.text = taskarray
        data1.isHidden = false
        data2.isHidden = false//надо проверить!!!

    }

    @IBAction func Changedate2(_ sender: UIDatePicker) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .full
        let dateValue = dateFormatter.string(from: sender.date)
        data2.text = dateValue


    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
