//
//  Group.swift
//  Beacon
//
//  Created by Nicholas Spencer on 7/14/16.
//  Copyright © 2016 Gray.Labs. All rights reserved.
//

import Foundation

class Group {
    var nameOfGroup: String
    var descOfGroup: String
    var alerts: [Alert]
    var members: [Contact]
    
    init(name: String, desc: String) {
        self.nameOfGroup = name
        self.descOfGroup = desc
        self.members = [Contact]()
        self.alerts = [Alert]()
    }
    
    func getName() -> String {
        return self.nameOfGroup
    }
    
    func getDescription() -> String {
        return self.descOfGroup
    }
    
    func getMemberList() -> [Contact] {
        return self.members
    }
    
    func addContact(c: Contact) {
        self.members.append(c);
    }
    
    func removeContact(c: Contact) {
        for(var i = 0; i < self.members.count; i++) {
            if(self.members[i] === c) {
                self.members.removeAtIndex(i);
            }
        }
    }
    
    func getAlertList() -> [Alert] {
        return self.alerts
    }
    
    func addAlert(alert: Alert) {
        self.alerts.append(alert)
    }
    
}