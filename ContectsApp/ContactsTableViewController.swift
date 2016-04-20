//
//  ContectsTableViewController.swift
//  ContectsApp
//
//  Created by Jinyou Liu on 3/8/16.
//  Copyright © 2016 Electricfish Electroincs. All rights reserved.
//

import UIKit

class ContactsTableViewController: UITableViewController {
    var contacts = [Contact]()
    
    override func viewDidLoad() {
        contacts.append(Contact(firstName:"Frank",lastName:"Poll",number:"119-302-2098"))
        contacts.append(Contact(firstName:"Dash",lastName:"Goudy",number:"119-667-2432"))
        contacts.append(Contact(firstName:"Yu",lastName:"Xin",number:"990-534-2098"))
        contacts.append(Contact(firstName:"Frank",lastName:"Poll",number:"119-302-2098"))
        
        let moveButton = UIBarButtonItem(barButtonSystemItem: .Edit, target: self, action: Selector("toggleEdit"))
        navigationItem.leftBarButtonItem = moveButton
    }
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! ContactCell
        
        let currentContect = contacts[indexPath.row]
        cell.update(currentContect)
        return cell
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if(segue.identifier == "openContact"){
            let openContact = segue.destinationViewController as! ContactDetails
            let cell = sender as! ContactCell
            openContact.contact = cell.contact
        }
    }

    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // Return the number of sections.
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Return the number of rows in the section.
        return contacts.count
    }
    
    func toggleEdit() {
        tableView.setEditing(!tableView.editing, animated: true)
    }
    
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            self.contacts.removeAtIndex(indexPath.row)
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        }
    }
    
    override func tableView(tableView: UITableView, moveRowAtIndexPath sourceIndexPath: NSIndexPath, toIndexPath destinationIndexPath: NSIndexPath) {
        let contactMoving = contacts.removeAtIndex(sourceIndexPath.row)
        contacts.insert(contactMoving, atIndex: destinationIndexPath.row)
    }
    
    override func tableView(tableView: UITableView, editingStyleForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCellEditingStyle {
        if tableView.editing {
            return .None
        } else {
            return .Delete
        }
    }
    
    override func tableView(tableView: UITableView, shouldIndentWhileEditingRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        return false
    }


}
