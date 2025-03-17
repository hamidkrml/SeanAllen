//
//  SceneDelegate.swift
//  SeanAllenYoutube
//
//  Created by hamid on 17.03.25.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
       
        guard let windowScane = (scene as? UIWindowScene) else { return }
        
        window = UIWindow(frame: windowScane.coordinateSpace.bounds)
        window?.windowScene = windowScane
        window?.rootViewController = UINavigationController(rootViewController: ViewController())
        window?.makeKeyAndVisible()
        
    }

   

}

