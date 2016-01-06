//
//  ViewController.swift
//  codeView
//
//  Created by Charles Caruana on 5/01/2016.
//  Copyright © 2016 Charles Caruana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    func userTappedButton()
    {
        let alert = UIAlertController(title: "Alert", message: "Message", preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "Click", style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(alert, animated: true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let rectSubview  = CGRectMake (
            self.view.frame.origin.y+20,
            self.view.frame.origin.x+20,
            200,200)
        
        let subView1 = UIView(frame: rectSubview)
        subView1.backgroundColor = UIColor.redColor()
        subView1.alpha = 1
        subView1.layer.cornerRadius = 1
        
        let subView2 = UIView(frame: rectSubview)
        subView2.backgroundColor = UIColor.blueColor()
        subView2.alpha = 1
        subView1.addSubview(subView2)
        
        let recButton = CGRectMake(
            200,
            200,
            200,
            50)
        
        let button1 = UIButton(frame: recButton)
        
        button1.setTitle("Tap ME",forState: .Normal)
        button1.setTitleColor(UIColor.blackColor(), forState: .Normal)
        button1.addTarget(self, action: "userTappedButton", forControlEvents: .TouchUpInside)
        
       
   
        
     
        self.view.addSubview(button1)
        
        self.view.addSubview(subView1)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

