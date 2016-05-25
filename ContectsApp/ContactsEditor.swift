//
//  ContactsEditor.swift
//  ContectsApp
//
//  Created by Jinyu Liu on 4/26/16.
//  Copyright © 2016 Electricfish Electroincs. All rights reserved.
//

import UIKit

class ContactEditor:UIViewController,UITextFieldDelegate{
    @IBOutlet weak var firstNameEditor:UITextField!
    @IBOutlet weak var lastNameEditor:UITextField!
    @IBOutlet weak var numberEditor:UITextField!
    var contact:Contact!
    
    override func viewDidLoad() {
        firstNameEditor.text = contact.firstName
        lastNameEditor.text = contact.lastName
        numberEditor.text = contact.number
        self.firstNameEditor.delegate = self
        self.lastNameEditor.delegate = self
        self.numberEditor.delegate = self
    }
    
    func textFieldDidEndEditing(textField: UITextField) {
        if textField == self.firstNameEditor{
            self.contact.firstName = textField.text!
        }else if textField == self.lastNameEditor{
            self.contact.lastName = textField.text!
        }else if textField == self.numberEditor{
            self.contact.number = textField.text!
        }
    }
    
}
