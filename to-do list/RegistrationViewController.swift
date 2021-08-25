//
//  RegistrationViewController.swift
//  to-do list
//
//  Created by Mac on 23.08.2021.
//  Copyright © 2021 Mac. All rights reserved.
//

import UIKit

class RegistrationViewController: UIViewController {
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var InButton: UIButton!
    @IBOutlet weak var PassvordTextField: UITextField!
    
    var name = ""
    var password = ""
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func ActionButton(_ sender: Any) {
        name = nameTextField.text!
        password = PassvordTextField.text!
        guard name.isEmpty == false && password.isEmpty == false else { return}
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let secondViewController = storyboard.instantiateViewController(withIdentifier: "SecondVC") as UIViewController
        secondViewController.modalPresentationStyle = .fullScreen
        
        present(secondViewController, animated: true, completion: nil)
        
        
    }
    


}
