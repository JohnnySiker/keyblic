//
//  NewEventViewController.swift
//  
//
//  Created by Luis  Daniel De San Pedro on 28/02/16.
//
//

import UIKit
import MapKit

class NewEventViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
    


    @IBAction func setLocationButton(sender: AnyObject) {
        let setLocationView = self.storyboard?.instantiateViewControllerWithIdentifier("setLocationViewController")
        self.presentViewController(setLocationView!, animated: true, completion: nil)
        
        
    }
    @IBAction func backButton(sender: AnyObject) {
        let homeView = self.storyboard?.instantiateViewControllerWithIdentifier("HomeController")
        self.presentViewController(homeView!, animated: true, completion: nil)
        
    }

}
