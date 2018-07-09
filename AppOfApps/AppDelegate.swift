//
//  AppDelegate.swift
//  AppOfApps
//
//  Created by ナム Nam Nguyen on 7/6/18.
//  Copyright © 2018 Nguyen Pte, Ltd. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: PluggableApplication {
    override var services: [ApplicationService] {
        return [JustAService()]
    }
}

