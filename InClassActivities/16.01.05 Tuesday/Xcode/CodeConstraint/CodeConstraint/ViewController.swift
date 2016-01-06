//
//  ViewController.swift
//  CodeConstraint
//
//  Created by Charles Caruana on 5/01/2016.
//  Copyright © 2016 Charles Caruana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let rectsubView1 = CGRectMake(
            self.view.frame.origin.x,
            self.view.frame.origin.y,
            self.view.frame.size.width,
            self.view.frame.height)
        
        
        let subView1 = UIView(frame: rectsubView1)
        
        subView1.backgroundColor = UIColor.redColor()
        
        subView1.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(subView1)
        
        let constraintTop = NSLayoutConstraint(
            item: subView1,
            attribute: .Top,
            relatedBy: .Equal,
            toItem: self.view,
            attribute: .Top,
            multiplier: 1,
            constant: 20)
        
        let constraintRight = NSLayoutConstraint(
            item: subView1,
            attribute: .Right,
            relatedBy: .Equal,
            toItem: self.view,
            attribute: .Right,
            multiplier: 1,
            constant: -20)
        
        let constraintBottom = NSLayoutConstraint(
            item: subView1,
            attribute: .Bottom,
            relatedBy: .Equal,
            toItem: self.view,
            attribute: .Bottom,
            multiplier: 1,
            constant: -20)
        
        let constraintLeft = NSLayoutConstraint(
            item: subView1,
            attribute: .Left,
            relatedBy: .Equal,
            toItem: self.view,
            attribute: .Left,
            multiplier: 1,
            constant: 20)
        
        
        self.view.addConstraint(constraintBottom)
        self.view.addConstraint(constraintLeft)
        self.view.addConstraint(constraintRight)
        self.view.addConstraint(constraintTop)

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

