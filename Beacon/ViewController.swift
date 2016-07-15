//
//  ViewController.swift
//  Beacon
//
//  Created by Frank Liao on 6/20/16.
//  Copyright © 2016 Gray.Labs. All rights reserved.
//

import UIKit
import GoogleSignIn

class ViewController:UIViewController, GIDSignInUIDelegate {

    
    func bringToWindow() {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil);
        let maintabviewcontroller: MainTabViewController = storyBoard.instantiateViewControllerWithIdentifier("MainTabViewController") as! MainTabViewController;
        self.presentViewController(maintabviewcontroller, animated: true, completion:nil);
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        GIDSignIn.sharedInstance().uiDelegate = self
        
        // Uncomment to automatically sign in the user.
        GIDSignIn.sharedInstance().signInSilently()
        
        // TODO(developer) Configure the sign-in button look/feel
        // ...
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

