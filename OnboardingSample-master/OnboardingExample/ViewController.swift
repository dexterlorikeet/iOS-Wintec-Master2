//
//  login.swift
//  OnboardingExample
//
//  Created by Ally Tiang on 11/10/18.
//  Copyright © 2018 Anitaa. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBAction func showStudent(_ sender: UIButton) {
        NSLog("showStudent")
        if let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "StudentView") as? StudentViewController
        {
            present(vc, animated: true, completion: nil)
        }
        
    }
    
    func textFieldShouldReturn(_ scoreText: UITextField) -> Bool {
        self.view.endEditing(true)
        return true
    }
    
    @IBOutlet weak var username: UITextField!
    @IBOutlet weak var password: UITextField!
    
    
    var users:Array<User> = Array<User>()
    
    func addUsers() {
        
        
        // adding user 1
        users.append(User(u: "Ally", p: "123"))
        
        // adding user 2
        users.append(User(u: "Tom", p: "t11"))
        
        // adding user 3
        users.append(User(u: "Sam", p: "s10"))
        
        // adding user 4
        users.append(User(u: "Dexter", p: "parrot"))
 
        
    }
    
    func canLogin(u: String, p: String) -> Bool {
        for user in users{
            if(user.isEqual(u: u, p: p)) {
                return true;
            }
        }
        return false;
    }
    
    func showMainView() {
        if let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "onboarding") as? OnboardingController
        {
            present(vc, animated: true, completion: nil)
        }
    }

    @IBAction func login(_ sender: UIButton) {
        
        if (canLogin(u: self.username.text!, p: self.password.text!)) {
          showMainView()
        } else {
            let alert = UIAlertController(title: "Login Failed", message: "Invalid username or password",
                                          preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "Click", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //vc will handle the events from the text fields of all the user name and password 
        username.delegate = self
        password.delegate = self
        addUsers()
        
    }
    
}
