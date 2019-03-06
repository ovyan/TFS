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

    func application(_ application: UIApplication, willFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil) -> Bool {
        out.printer()
        return true
    }

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        out.printer()
        AppThemeManager().restoreTheme()
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        out.printer()
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        out.printer()
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        out.printer()
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        out.printer()
    }

    func applicationWillTerminate(_ application: UIApplication) {
        out.printer()
    }
}
