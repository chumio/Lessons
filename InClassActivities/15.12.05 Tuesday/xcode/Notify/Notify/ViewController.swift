//
//  ViewController.swift
//  Notify
//
//  Created by Antonio de Perio on 15/12/2015.
//  Copyright © 2015 Workshop. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIAlertViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        NSNotificationCenter.defaultCenter().addObserver(
            self,
            selector: "alertShown:",
            name: "MyAlertNotification",
            object: nil)
    }
    
    func alertShown(notification: NSNotification){
    
//        let alertView = UIAlertController(title: "My Notification", message: "Alert is shown", preferredStyle: UIAlertControllerStyle.Alert)
//        
//        alertView.addAction(UIAlertAction(title: "Done", style: UIAlertActionStyle.Default, handler: nil))
//        
//        self.presentViewController(alertView, animated: true, completion: nil)
        
        
        print("My Notification Received on the home screen")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func showAlert(sender: AnyObject) {
        
        NSNotificationCenter.defaultCenter().postNotificationName("MyAlertNotification", object: nil)
        
    }
}

