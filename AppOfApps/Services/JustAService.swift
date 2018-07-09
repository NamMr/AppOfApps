//
//  JustAService.swift
//  AppOfApps
//
//  Created by ナム Nam Nguyen on 7/9/18.
//  Copyright © 2018 Nguyen Pte, Ltd. All rights reserved.
//

import UIKit

class JustAService: NSObject, ApplicationService {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey : Any]? = nil) -> Bool {
        print("JustAService has started!")
        return true
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        print("JustAService has entered background")
    }
}
