//
//  ViewController.swift
//  NonStopParty
//
//  Created by Jonathan Velazquez on 27/02/16.
//  Copyright © 2016 Keyblic. All rights reserved.
//

import UIKit

class WelcomeController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func nextScreenButton(sender: AnyObject) {
        let logInScreen = self.storyboard?.instantiateViewControllerWithIdentifier("LogInController")
        self.presentViewController(logInScreen!, animated: true, completion: nil)
        
    }

}

