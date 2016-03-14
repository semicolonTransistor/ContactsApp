//
//  ContactDetails.swift
//  ContectsApp
//
//  Created by Jinyou Liu on 3/8/16.
//  Copyright © 2016 Electricfish Electroincs. All rights reserved.
//

import UIKit

class ContactDetails:UIViewController{
    @IBOutlet weak var fullName:UILabel!
    @IBOutlet weak var details:UITextView!
    
    var contact:Contact = Contact(firstName: "",lastName: "",number: "")
    
    override func viewDidLoad(){
        fullName.text = contact.getName()
        details.editable = false
        var detailsString = "number: " + contact.number + "\n"
        details.text = detailsString
        
    }

}
