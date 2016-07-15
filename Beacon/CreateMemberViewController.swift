//
//  CreateMemberViewController.swift
//  Beacon
//
//  Created by Nicholas Spencer on 7/15/16.
//  Copyright © 2016 Gray.Labs. All rights reserved.
//

import UIKit

class CreateMemberViewController: UIViewController {

    @IBOutlet var NameField: UITextField!
    
    @IBOutlet var EmailField: UITextField!
    
    @IBAction func CreateMemberAction(sender: AnyObject) {
        let nameField = NameField.text!
        let emailField = EmailField.text!
        
        if(!nameField.isEmpty && !emailField.isEmpty) {
            let contact: Contact = Contact(name: nameField, email: emailField)
            UserData.currentGroup.addContact(contact)
            
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
