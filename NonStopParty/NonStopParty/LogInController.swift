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

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
    
    //Botón que se encarga de hacer el inicio de sesión del usuario. Si el inicio es exitoso, se pasa a la pantalla de menu principal
    
    @IBAction func loginButton(sender: AnyObject) {
        
        //Aquí va todo el proceso de inicio de sesión.
        
        let mainMenuView = self.storyboard?.instantiateViewControllerWithIdentifier("MainMenuController")
        self.presentViewController(mainMenuView!, animated: true, completion: nil)
        
    }
    
    //Botón que se encarga de hacer la transición a la pantalla de Sign in, donde el usuario podrá hacer su registro en caso de no tener una cuenta registrada.
    
    @IBAction func signInButton(sender: AnyObject) {
        
        let signInVIew = self.storyboard?.instantiateViewControllerWithIdentifier("SignInController")
        self.presentViewController(signInVIew!, animated: true, completion: nil)
    }

}
