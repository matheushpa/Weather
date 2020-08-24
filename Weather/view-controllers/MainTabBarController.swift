//
//  MainTabBarController.swift
//  Weather
//
//  Created by Matheus Holanda Pinheiro de Albuquerque on 22/08/20.
//  Copyright © 2020 Matheus Holanda. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabBarViews()
        setupTabBarLayout()
    }
    
    // MARK: - Setup methods
    func setupTabBarViews() {
        
        // TODO: - tabbar buttons image size
        
        let firstViewController = UINavigationController(rootViewController: TodayViewController())
        let firstTabBarItem = UITabBarItem(title: kToday,
                                           image: UIImage(named: "Clear Sky (Day)"),
                                           selectedImage: UIImage(named: "Clear Sky (Day)"))
        firstViewController.tabBarItem = firstTabBarItem
        let secondViewController = UINavigationController(rootViewController: ForecastViewController())
        let secondTabBarItem = UITabBarItem(title: kForecast,
                                            image: UIImage(named: "Clear Sky (Day)"),
                                            selectedImage: UIImage(named: "Clear Sky (Day)"))
        secondViewController.tabBarItem = secondTabBarItem
        self.viewControllers = [firstViewController, secondViewController]
    }
    
    func setupTabBarLayout() {
        UITabBar.appearance().barTintColor = .white
        UITabBar.appearance().tintColor = .blue
        UITabBar.appearance().unselectedItemTintColor = .black
    }
}
