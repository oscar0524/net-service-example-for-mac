//
//  ServiceDelegate.swift
//  net-service
//
//  Created by 葉冠暉 on 2021/2/13.
//  Copyright © 2021 葉冠暉. All rights reserved.
//

import Foundation

class ServiceDelegate:NSObject,NetServiceDelegate {
    func netServiceWillPublish(_ sender: NetService) {
        print("[Service] Will publish: \(sender)")
    }
    
    func netServiceDidPublish(_ sender: NetService) {
        print("[Service] Did publish: \(sender)")
    }
    
    func netService(_ sender: NetService, didNotPublish error: Error) {
        print("[Service] Did not publish: \(sender), because: \(error)")
    }
    
    func netServiceDidStop(_ sender: NetService) {
        print("[Service] Did stop: \(sender)")
    }
 
}
