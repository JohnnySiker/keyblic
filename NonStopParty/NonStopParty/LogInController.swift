//
//  LogInController.swift
//  NonStopParty
//
//  Created by Luis  Daniel De San Pedro on 27/02/16.
//  Copyright © 2016 Keyblic. All rights reserved.
//

import UIKit
import FBSDKLoginKit

class LogInController: UIViewController, FBSDKLoginButtonDelegate{
    
    
    @IBOutlet var btnLogin: FBSDKLoginButton!


    override func viewDidLoad() {
        super.viewDidLoad()
        configureLogin()
    
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
    
    func configureLogin ()
    {
        btnLogin.readPermissions = ["public_profile","email","user_friends"]
        btnLogin.delegate = self
    }
    
    
    //Estas dos funciones tienen que ser agregadas al usar el FBSDKLoginButtonDelegate
    //Función que se encarga de hacer el inicio de sesion
    func loginButton(loginButton: FBSDKLoginButton!, didCompleteWithResult result: FBSDKLoginManagerLoginResult!, error: NSError!) {
        
        FBSDKGraphRequest.init(graphPath: "me", parameters: ["fields":"first_name, last_name"]).startWithCompletionHandler{ (connection,result, error) -> Void in
            
            let firstname : String = (result.objectForKey("first_name") as? String)!
            let latname : String = (result.objectForKey("last_name")as? String)!
            
            
            print(firstname)
            print(latname)
            
            
        }
    }
    
    func loginButtonDidLogOut(loginButton: FBSDKLoginButton!) {
        print("User Logged Out")
    }

}
