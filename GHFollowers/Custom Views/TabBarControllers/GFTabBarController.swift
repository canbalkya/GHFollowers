//
//  GFTabBarController.swift
//  GHFollowers
//
//  Created by Can Balkaya on 4/12/20.
//  Copyright © 2020 Can Balkaya. All rights reserved.
//

import UIKit

class GFTabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UITabBar.appearance().tintColor = .systemGreen
        viewControllers = [createSearchNC(), createFavoritesNC()]
    }
    
    func createSearchNC() -> UINavigationController {
        let searchVC = SearchVC()
        searchVC.title = "Search"
        searchVC.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 0)
        
        return UINavigationController(rootViewController: searchVC)
    }
    
    func createFavoritesNC() -> UINavigationController {
        let favoritesListVC = FavoritesListVC()
        favoritesListVC.title = "Favorites"
        favoritesListVC.tabBarItem  = UITabBarItem(tabBarSystemItem: .contacts, tag: 1)
        
        return UINavigationController(rootViewController: favoritesListVC)
    }
}
