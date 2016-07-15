//
//  GroupOptionsViewController.swift
//  Beacon
//
//  Created by Nicholas Spencer on 7/14/16.
//  Copyright © 2016 Gray.Labs. All rights reserved.
//

import UIKit

class GroupOptionsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
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
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if(tableView.restorationIdentifier == "Alerts") {
            print("DID OKAY")
            return UserData.currentGroup.getAlertList().count
        } else if(tableView.restorationIdentifier == "Members") {
            print("DID OKAY")
            return UserData.currentGroup.getMemberList().count
        }
        return 0
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        if(tableView.restorationIdentifier == "Members") {
            let memberCell : UITableViewCell = tableView.dequeueReusableCellWithIdentifier("Members", forIndexPath: indexPath) as UITableViewCell
        
            memberCell.textLabel?.text = UserData.currentGroup.getMemberList()[indexPath.row].getName()
            memberCell.detailTextLabel?.text = UserData.currentGroup.getMemberList()[indexPath.row].getEmail()
        
            return memberCell
        } else {
            let alertCell: UITableViewCell = tableView.dequeueReusableCellWithIdentifier("Alerts", forIndexPath: indexPath) as UITableViewCell
            
            alertCell.textLabel?.text = UserData.currentGroup.getAlertList()[indexPath.row].getName()
            alertCell.detailTextLabel?.text = UserData.currentGroup.getAlertList()[indexPath.row].getTime()
            
            return alertCell
        }
    }
    
}
