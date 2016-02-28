//
//  setLocationViewController.swift
//  NonStopParty
//
//  Created by Luis  Daniel De San Pedro on 28/02/16.
//  Copyright © 2016 Keyblic. All rights reserved.
//

import UIKit
import MapKit

class setLocationViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let location = CLLocationCoordinate2D(
            latitude: 51.50007773,
            longitude: -0.1246402
        )
        let span = MKCoordinateSpanMake(0.05, 0.05)
        let region = MKCoordinateRegion(center: location, span: span)
        mapView.setRegion(region, animated: true)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    



    @IBAction func backButton(sender: AnyObject) {
        let NewEventView = self.storyboard?.instantiateViewControllerWithIdentifier("NewEventViewController")
        
        self.presentViewController(NewEventView!, animated: true, completion: nil)
    }
    
    @IBOutlet var mapView: MKMapView!
    
}
