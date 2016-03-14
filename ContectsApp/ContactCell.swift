//
//  ContactCell.swift
//  ContectsApp
//
//  Created by Jinyou Liu on 3/8/16.
//  Copyright © 2016 Electricfish Electroincs. All rights reserved.
//

import UIKit

class ContactCell: UITableViewCell {
    @IBOutlet weak var name:UILabel!
    @IBOutlet weak var number:UILabel!
    var contact:Contact = Contact(firstName:"",lastName:"",number:"")
    
    func update(contact:Contact){
        self.contact = contact
        self.name.text = contact.getName()
        self.number.text = contact.number
    }
}
