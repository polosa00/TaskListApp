//
//  AppDelegate.swift
//  TaskListApp
//
//  Created by Александр Полочанин on 17.05.23.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    private let storageManager = StorageManager.shared
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        return true
    }

    // MARK: UISceneSession Lifecycle
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
                return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
    }

    // MARK: - Core Data Saving support
    func applicationWillTerminate(_ application: UIApplication) {
        storageManager.saveContext()
    }
}

