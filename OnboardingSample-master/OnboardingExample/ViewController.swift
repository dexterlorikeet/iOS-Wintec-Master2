//
//  login.swift
//  OnboardingExample
//
//  Created by Ally Tiang on 11/10/18.
//  Copyright © 2018 Anitaa. All rights reserved.
//

import UIKit

class viewController: UIViewController {
    

    @IBAction func login(_ sender: UIButton) {
        if let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "onboarding") as? OnboardingController
            
        {
            present(vc, animated: true, completion: nil)
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    
}
