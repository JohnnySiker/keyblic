//
//  LogInController.swift
//  NonStopParty
//
//  Created by Luis  Daniel De San Pedro on 27/02/16.
//  Copyright © 2016 Keyblic. All rights reserved.
//

import UIKit

class LogInController: UIViewController {

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
    @IBAction func loginButton(sender: AnyObject) {
        let mainMenuView = self.storyboard?.instantiateViewControllerWithIdentifier("MainMenuController")
        self.presentViewController(mainMenuView!, animated: true, completion: nil)
        
    }
    @IBAction func signInButton(sender: AnyObject) {
        let signInVIew = self.storyboard?.instantiateViewControllerWithIdentifier("SignInController")
        self.presentViewController(signInVIew!, animated: true, completion: nil)
    }

}
