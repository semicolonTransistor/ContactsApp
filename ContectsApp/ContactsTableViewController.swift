//
//  ContectsTableViewController.swift
//  ContectsApp
//
//  Created by Jinyou Liu on 3/8/16.
//  Copyright © 2016 Electricfish Electroincs. All rights reserved.
//

import UIKit

class ContactsTableViewController: UITableViewController {
    var contects = [Contact]()
    
    override func viewDidLoad() {
        contects.append(Contact(firstName:"Frank",lastName:"Poll",number:"119-302-2098"))
         contects.append(Contact(firstName:"Dash",lastName:"Goudy",number:"119-667-2432"))
         contects.append(Contact(firstName:"Yu",lastName:"Xin",number:"990-534-2098"))
         contects.append(Contact(firstName:"Frank",lastName:"Poll",number:"119-302-2098"))
    }
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! ContactCell
        
        let currentContect = contects[indexPath.row]
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
        return contects.count
    }

}
