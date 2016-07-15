//
//  UserData.swift
//  Beacon
//
//  Created by Nicholas Spencer on 7/14/16.
//  Copyright © 2016 Gray.Labs. All rights reserved.
//

import Foundation

class UserData {
    static var userContact: Contact = Contact(name: "", email: "")
    static var userGroups: [Group] = [Group]()
    static var currentGroup: Group = Group(name: "", desc: "")
    
    static func setContact(contact: Contact) {
        UserData.userContact = contact
    }
    
    static func addGroup(group: Group) {
        UserData.userGroups.append(group)
    }
    
    static func removeGroup(group: Group) {
        for(var i = 0; i < UserData.userGroups.count; i++) {
            if(UserData.userGroups[i] === group) {
                UserData.userGroups.removeAtIndex(i)
            }
        }
    }

    
}