//
//  GroupsViewController.swift
//  Beacon
//
//  Created by Nicholas Spencer on 7/14/16.
//  Copyright © 2016 Gray.Labs. All rights reserved.
//

import UIKit

class GroupsViewController: UITableViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // TODO(developer) Configure the sign-in button look/feel
        // ...
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return UserData.userGroups.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCellWithIdentifier("Groups", forIndexPath: indexPath) as UITableViewCell;
        
        cell.textLabel?.text = UserData.userGroups[indexPath.row].getName()
        cell.detailTextLabel?.text = UserData.userGroups[indexPath.row].getDescription()
        
        return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if(sender is UITableViewCell) {
            let index: NSIndexPath = self.tableView.indexPathForSelectedRow!
             UserData.currentGroup = UserData.userGroups[index.row]
        }
        
        
    }
}
