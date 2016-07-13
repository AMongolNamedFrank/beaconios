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

    @IBOutlet var SignInStatus: UILabel!
    
    @IBOutlet var LogoutSignIn: UIButton!
    @IBAction func LogoutButton(sender: AnyObject) {
        GIDSignIn.sharedInstance().signOut()
        updateSignInStatus(false)
    }
    
    func updateSignInStatus(sIn: Bool) {
        if(sIn) {
            SignInStatus.text = "Signed In"
        } else {
            SignInStatus.text = "Signed Out"
        }
    }
    
    func bringToWindow() {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil);
        let homeviewcontroller: HomeViewController = storyBoard.instantiateViewControllerWithIdentifier("HomeViewController") as! HomeViewController;
        self.presentViewController(homeviewcontroller, animated: true, completion:nil);
        
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

