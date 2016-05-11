//
//  ContactsEditor.swift
//  ContectsApp
//
//  Created by Jinyu Liu on 4/26/16.
//  Copyright © 2016 Electricfish Electroincs. All rights reserved.
//

import UIKit

class ContactEditor:UIViewController{
    @IBOutlet weak var firstNameEditor:UITextField!
    @IBOutlet weak var lastNameEditor:UITextField!
    @IBOutlet weak var numberEditor:UITextField!
    var contact:Contact!
    
    override func viewDidLoad() {
        firstNameEditor.text = contact.firstName
        lastNameEditor.text = contact.lastName
        numberEditor.text = contact.number
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?){
        if(segue.identifier == "save"){
            contact.firstName = firstNameEditor.text!
            contact.lastName = lastNameEditor.text!
            contact.number = numberEditor.text!
        }
    }
}
