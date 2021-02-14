//
//  BrowserDelegate.swift
//  net-service
//
//  Created by 葉冠暉 on 2021/2/13.
//  Copyright © 2021 葉冠暉. All rights reserved.
//

import Foundation
class BrowserDelegate: NSObject,NetServiceBrowserDelegate {
    func netServiceBrowserWillSearch(_ browser: NetServiceBrowser) {
        print("[Browser] Will search: \(browser)")
    }
    
    func netServiceBrowser(_ browser: NetServiceBrowser, didNotSearch error: Error) {
        print("[Browser] Did not search: \(error)")
    }
    
    public func netServiceBrowser(_ browser: NetServiceBrowser, didFind service: NetService, moreComing: Bool) {
        print("[Browser] Did find: \(service)")
    }
    
    public func netServiceBrowser(_ browser: NetServiceBrowser, didRemove service: NetService, moreComing: Bool) {
        print("[Browser] Did remove: \(service)")
    }
    
    public func netServiceBrowserDidStopSearch(_ browser: NetServiceBrowser) {
        print("[Browser] Did stop: \(browser)")
    }
}
