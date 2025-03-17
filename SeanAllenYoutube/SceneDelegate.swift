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
        window?.rootViewController = createTabbar()
        window?.makeKeyAndVisible()
        
    }
    
    func createSearchNC() -> UINavigationController {
        let searchVC = SearchVC()
        searchVC.title = "Search"
        
        searchVC.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 0)
        
        return  UINavigationController(rootViewController: searchVC)
    }
    
    
    
    func createFavoriteNC() -> UINavigationController {
        let favoritelistVC = FavoriteVC()
        favoritelistVC.title = "Favorites"
        favoritelistVC.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 1)
        
        return  UINavigationController(rootViewController: favoritelistVC)
    }
    
    func createTabbar() -> UITabBarController{
        let tabbar  = UITabBarController()
        UITabBar.appearance().tintColor = .systemGreen
        tabbar.viewControllers = [createSearchNC(),createFavoriteNC()]
        
        return tabbar
    }
}

