//
//  main.swift
//  net-service
//
//  Created by 葉冠暉 on 2021/2/13.
//  Copyright © 2021 葉冠暉. All rights reserved.
//

import Foundation

let browser=NetServiceBrowser()
let browser_delegate=BrowserDelegate()
browser.searchForServices(ofType: "_http._tcp.", inDomain: "local.")
browser.delegate=browser_delegate

let service=NetService(domain: "local.", type: "_http._tcp.", name: "Test NetService", port: 8000)
let service_delegate=ServiceDelegate()
service.delegate=service_delegate
service.publish()

withExtendedLifetime((browser,browser_delegate,service,service_delegate)){
    RunLoop.main.run()
}
