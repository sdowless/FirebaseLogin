//
//  User.swift
//  FirebaseLogin
//
//  Created by Stephen Dowless on 1/11/19.
//  Copyright © 2019 Stephan Dowless. All rights reserved.
//

struct User {
    
    var email: String!
    var username: String!
    var accountType: AccountType!
    var uid: String!
    
    init(uid: String, dictionary: [String: AnyObject]) {
        self.uid = uid
        
        if let email = dictionary["email"] as? String {
            self.email = email
        }
        
        if let username = dictionary["username"] as? String {
            self.username = username
        }
        
        if let accountTypeInitValue = dictionary["accountType"] as? Int {
            self.accountType = AccountType(rawValue: accountTypeInitValue) ?? .Staff
        }
    }
}

enum AccountType: Int {
    case Admin
    case Staff
}
