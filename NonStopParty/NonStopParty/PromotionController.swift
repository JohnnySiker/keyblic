//
//  PromotionController.swift
//  NonStopParty
//
//  Created by Jonathan Velazquez on 28/02/16.
//  Copyright © 2016 Keyblic. All rights reserved.
//

import UIKit

class PromotionController: UIViewController,SWRevealViewControllerDelegate,UITextFieldDelegate {

    @IBOutlet weak var tf_code: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
            tf_code.delegate = self
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
    }

    
    @IBAction func sendCode(sender: UIButton) {
        if tf_code.text == "CHELATHON-2016" {
            var alert = UIAlertController(title: "Felicidades!!", message: "Desbloqueaste la membresia: Oro", preferredStyle: UIAlertControllerStyle.Alert)
            var option = UIAlertAction(title: "Ok", style: .Default, handler: nil)
            alert.addAction(option)
            self.presentViewController(alert, animated: true, completion: nil)
            //tf_code.text = ""
            
        }else{
            var alert = UIAlertController(title: "Codigo no valido", message: ":(", preferredStyle: UIAlertControllerStyle.Alert)
            var option = UIAlertAction(title: "Ok", style: .Default, handler: nil)
            alert.addAction(option)
            self.presentViewController(alert, animated: true, completion: nil)
        }
    }
    
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        tf_code.resignFirstResponder()
        return true;
    }
    
    
}
