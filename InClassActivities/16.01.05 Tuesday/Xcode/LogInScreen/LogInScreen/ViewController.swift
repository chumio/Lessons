//
//  ViewController.swift
//  LogInScreen
//
//  Created by Charles Caruana on 5/01/2016.
//  Copyright © 2016 Charles Caruana. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var myLogInName:UITextField?

    override func viewDidLoad() {
        super.viewDidLoad()
        
      InitialiseLogInScreen()
        
    }
    func InitialiseLogInScreen () {
        
        let loginView = UIView(frame: CGRectMake(10, 10, self.view.frame.width - 20, self.view.frame.height - 20))
        loginView.backgroundColor = UIColor.grayColor()
        
        
        self.myLogInName = UITextField(frame: CGRectMake(30, 100, 300, 40))
        myLogInName!.backgroundColor = UIColor.blueColor()
        myLogInName!.textColor = UIColor.whiteColor()
        myLogInName!.placeholder = "Username"
        
        loginView.addSubview(myLogInName!)
        
        let myPassWord = UITextField(frame: CGRectMake(30, 160, 300, 40))
        myPassWord.backgroundColor = UIColor.blueColor()
        myPassWord.textColor = UIColor.whiteColor()
        myPassWord.secureTextEntry = true
        
        loginView.addSubview(myPassWord)
        
        let myButton = UIButton(frame: CGRectMake(30, 220, 300, 40))
        myButton.backgroundColor = UIColor.grayColor()
        myButton.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        myButton.setTitle("Login", forState: .Normal)
        myButton.addTarget(self, action: "logInPressed", forControlEvents: .TouchUpInside)
        
        loginView.addSubview(myButton)
        
        self.view.addSubview(loginView)
  
    }
    
    
    func logInPressed ()
    {
        print("Login \(self.myLogInName!.text!)")
        
        let successView = UIView(frame: CGRectMake(10, 400, self.view.frame.width - 20, 100))
        successView.backgroundColor = UIColor.redColor()
        
        let successViewLabel = UILabel(frame: CGRectMake(10, 10, self.view.frame.width - 40, 40))
        successViewLabel.textColor = UIColor.whiteColor()
        successViewLabel.text = "Success"
        
        let successViewButton = UIButton(frame: CGRectMake(10, 50, self.view.frame.width - 40, 40))
        successViewButton.backgroundColor = UIColor.whiteColor()
        successViewButton.layer.cornerRadius = 20
        successViewButton.setTitleColor(UIColor.redColor(), forState: .Normal)
        successViewButton.setTitle("Cancel", forState: .Normal)
        
        successView.addSubview(successViewLabel)
        successView.addSubview(successViewButton)

        
        self.view.addSubview(successView)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

