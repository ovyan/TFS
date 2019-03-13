//
//  AppDelegate.swift
//  TFS
//
//  Created by Mike Ovyan on 07/02/2019.
//  Copyright © 2019 Mike Ovyan. All rights reserved.
//

import CoreData
import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        out.printer()
        AppThemeManager().restoreTheme()
        return true
    }
}
