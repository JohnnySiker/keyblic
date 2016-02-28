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
        
        let latitude = CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275)
        let span = MKCoordinateSpanMake(0.05, 0.05)
        let region = MKCoordinateRegion(center: latitude, span: span)
        map.setRegion(region, animated: true)


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    

    @IBOutlet var map: MKMapView!


}
