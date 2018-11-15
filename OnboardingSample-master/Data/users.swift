//
//  users.swift
//  OnboardingExample
//
//  Created by Ally Tiang on 11/15/18.
//  Copyright © 2018 Anitaa. All rights reserved.
//

import Foundation

class User {
    var username: String
    var password:String

    
    init(u: String, p: String) {
        self.username = u
        self.password = p
    }
    
    func show() {
        print("==========[ User ]============")
        print("Username: \(self.username)")
        print("Password: \(self.password)")
        print("==============================")
    }
    
    func isEqual(u: String, p: String) -> Bool {
        return self.username == u && self.password == p
    }
    
}
