//
//  PluggableApplication.swift
//  AppOfApps
//
//  Created by ナム Nam Nguyen on 7/9/18.
//  Copyright © 2018 Nguyen Pte, Ltd. All rights reserved.
//

import UIKit

class PluggableApplication: UIResponder, ApplicationService {
    
    var window: UIWindow?
    open var services: [ApplicationService] { return [] }
    private lazy var _services: [ApplicationService] = {
        return self.services
    }()
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        var result = false
        _services.forEach { service in
            result = service.application?(application, didFinishLaunchingWithOptions: launchOptions) ?? result
        }
        return result
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
        _services.forEach { $0.applicationWillResignActive?(application) }
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        _services.forEach { $0.applicationDidEnterBackground?(application) }
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
        _services.forEach { $0.applicationWillEnterForeground?(application) }
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        _services.forEach { $0.applicationDidBecomeActive?(application) }
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
        _services.forEach { $0.applicationWillTerminate?(application) }
    }
}
