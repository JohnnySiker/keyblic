//
//  ViewController.swift
//  NonStopParty
//
//  Created by Jonathan Velazquez on 27/02/16.
//  Copyright © 2016 Keyblic. All rights reserved.
//

import UIKit

class WelcomeController: UIViewController {

  
    
    
    
    @IBOutlet weak var wb_gifContainer: UIWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setup()
        self.navigationController?.navigationBar.hidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func setup(){
        let filePath = NSBundle.mainBundle().pathForResource("Paisaje", ofType: "gif")
        let gif = NSData(contentsOfFile: filePath!)
        wb_gifContainer.frame = self.view.frame
        wb_gifContainer.loadData(gif!, MIMEType: "image/gif", textEncodingName: String(), baseURL: NSURL())
        wb_gifContainer.contentMode = .Center
        wb_gifContainer.userInteractionEnabled = false;
    }
    
    
    
//Botón que cambia la vista de la vista de bienvenida a la vista de login 
    @IBAction func nextScreenButton(sender: AnyObject) {
        let logInScreen = self.storyboard?.instantiateViewControllerWithIdentifier("LogInController")
        self.navigationController?.pushViewController(logInScreen!, animated: true)
        
    }

    @IBAction func signup(sender: UIButton) {
        let signupScreen = self.storyboard?.instantiateViewControllerWithIdentifier("SignInController")
        self.navigationController?.pushViewController(signupScreen!, animated: true)
    }
}

