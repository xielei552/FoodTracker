//
//  ViewController.swift
//  FoodTracker
//
//  Created by 谢雷 on 2016-03-01.
//
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
//MARK: Properties
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var mealNameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //Hadle the text fuekd's user input through delegate callbacks.
        nameTextField.delegate = self
    }
 //MARK: UITextFieldDelegate
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        // Hide the keyboard
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(textField: UITextField) {
        mealNameLabel.text = textField.text
    }
 //MARK: Actions

    @IBAction func setDefaultLabelText(sender: UIButton) {
        mealNameLabel.text = "Default Text"
    }
    
}

