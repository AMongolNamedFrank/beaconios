//
//  HomeViewController.swift
//  Beacon
//
//  Created by Nicholas Spencer on 7/12/16.
//  Copyright © 2016 Gray.Labs. All rights reserved.
//

import UIKit
import GoogleSignIn

class HomeViewController:UIViewController, GIDSignInUIDelegate {
    
    @IBAction func LogoutBtn(sender: UIButton) {
        GIDSignIn.sharedInstance().signOut();
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil);
        let viewcontroller: ViewController = storyBoard.instantiateViewControllerWithIdentifier("ViewController") as! ViewController;
        self.presentViewController(viewcontroller, animated: true, completion:nil);
    }
    
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

}