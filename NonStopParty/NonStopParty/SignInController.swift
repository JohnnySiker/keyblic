//
//  SignInController.swift
//  NonStopParty
//
//  Created by Luis  Daniel De San Pedro on 27/02/16.
//  Copyright © 2016 Keyblic. All rights reserved.
//

import UIKit

class SignInController: UIViewController {

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
    
    
    //Boton que se encarga de manejar el registro de los datos del usuario en la base de datos, aparte de la transición de pantallas.
    @IBAction func singInButton(sender: AnyObject) {
        //Aquí viene todo el proceso de resgistro de usuario en la base de datos 
        
        let mainMenuView = self.storyboard?.instantiateViewControllerWithIdentifier("MainMenuController")
        
        self.presentViewController(mainMenuView!, animated: true , completion: nil)
        
    }


}
