//
//  CreateGroupViewController.swift
//  Beacon
//
//  Created by Nicholas Spencer on 7/15/16.
//  Copyright © 2016 Gray.Labs. All rights reserved.
//

import UIKit

class CreateGroupViewController: UIViewController {
    @IBOutlet var NameField: UITextField!

    @IBOutlet var DescriptionField: UITextView!
    
    @IBAction func CreateGroupAction(sender: UIButton) {
        let nameField: String = NameField.text!
        let descField: String = DescriptionField.text!
        if(!nameField.isEmpty && !descField.isEmpty) {
            let group: Group = Group(name: nameField, desc: descField)
            UserData.userGroups.append(group)
            print("Created Group")
            
            
            let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil);
            let maintabviewcontroller: MainTabViewController = storyBoard.instantiateViewControllerWithIdentifier("MainTabViewController") as! MainTabViewController;
            self.presentViewController(maintabviewcontroller, animated: true, completion:nil);
            
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
