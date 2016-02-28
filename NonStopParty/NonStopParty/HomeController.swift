//
//  HomeController.swift
//  NonStopParty
//
//  Created by Jonathan Velazquez on 28/02/16.
//  Copyright © 2016 Keyblic. All rights reserved.
//

import UIKit
import BubbleTransition

class HomeController: UIViewController,SWRevealViewControllerDelegate {

    @IBOutlet weak var tb_events: UITableView!
    let transition = BubbleTransition()
    var eventos:[EventType]!
    @IBOutlet weak var btn_addEvent: CircleButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tb_events.delegate = self
        tb_events.dataSource = self
        
        eventos = [EventType(imageName: "Birthday", title: "Birthday"),EventType(imageName: "Grill", title: "Grill"),EventType(imageName: "Party", title: "Party"),EventType(imageName: "Wedding", title: "Wedding")]
    }

    override func viewDidAppear(animated: Bool) {
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
    }
    
    
    
    
}

extension HomeController: UITableViewDataSource{
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return eventos.count;
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tb_events.dequeueReusableCellWithIdentifier("EventTypeCell") as! EventTypeCell
        cell.setCell(UIImage(named: eventos[indexPath.row].imageName!)!, title: eventos[indexPath.row].title!)
        return cell
    }

}

extension HomeController: UITableViewDelegate{
    
    
}

extension HomeController:UIViewControllerTransitioningDelegate{
    
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let controller = segue.destinationViewController
        controller.transitioningDelegate = self
        controller.modalPresentationStyle = .Custom
    }
    func animationControllerForPresentedController(presented: UIViewController, presentingController presenting: UIViewController, sourceController source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        transition.transitionMode = .Present
        transition.startingPoint = btn_addEvent.center
        transition.bubbleColor = btn_addEvent.backgroundColor!
        return transition
    }
    
    func animationControllerForDismissedController(dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        transition.transitionMode = .Dismiss
        transition.startingPoint = btn_addEvent.center
        transition.bubbleColor = btn_addEvent.backgroundColor!
        return transition
    }

}
