//
//  Alert.swift
//  Beacon
//
//  Created by Nicholas Spencer on 7/14/16.
//  Copyright © 2016 Gray.Labs. All rights reserved.
//

import Foundation

class Alert {
    var alertName: String
    var alertDesc: String
    var alertTime: String
    
    init(name: String, desc: String, time: String) {
        self.alertName = name
        self.alertDesc = desc
        self.alertTime = time
    }
    
    func getName() -> String {
        return self.alertName
    }
    
    func getDesc() -> String {
        return self.alertDesc
    }
    
    func getTime() -> String {
        return self.alertTime
    }
}