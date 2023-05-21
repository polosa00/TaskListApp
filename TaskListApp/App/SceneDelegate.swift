//
//  SceneDelegate.swift
//  TaskListApp
//
//  Created by Александр Полочанин on 17.05.23.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    private let storageManager = StorageManager.shared

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowScene)
        window?.makeKeyAndVisible()
        window?.rootViewController = UINavigationController(rootViewController: TaskListViewController())
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        storageManager.saveContext()
    }
}

