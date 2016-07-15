//
//  Contact.swift
//  Beacon
//
//  Created by Nicholas Spencer on 7/14/16.
//  Copyright © 2016 Gray.Labs. All rights reserved.
//

import Foundation

class Contact {
    var contactName: String
    var contactEmail: String
    
    init(name: String, email: String) {
        self.contactName = name
        self.contactEmail = email
    }
    
    func setName(name: String) {
        self.contactName = name
    }
    
    func setEmail(email: String) {
        self.contactEmail = email
    }
    
    func getName() -> String {
        return self.contactName
    }
    
    func getEmail() -> String {
        return self.contactEmail
    }
}