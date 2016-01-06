//
//  ViewController2.swift
//  Notify
//
//  Created by Antonio de Perio on 15/12/2015.
//  Copyright © 2015 Workshop. All rights reserved.
//

import UIKit

class ViewController2: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
       
    }
    
    @IBAction func showAlert(sender: AnyObject) {
        
         NSNotificationCenter.defaultCenter().postNotificationName("MyAlertNotification", object: nil)
        self.dismissViewControllerAnimated(true, completion: nil)
    }
}