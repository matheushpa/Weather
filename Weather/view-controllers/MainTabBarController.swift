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
    
    private func setupTabBarViews() {
        let firstViewController = UINavigationController(rootViewController: TodayViewController())
        let firstTabBarItem = UITabBarItem(title: kToday,
                                           image: UIImage(named: "Today Active (Tab)"),
                                           selectedImage: UIImage(named: "Today Inactive (Tab)"))
        firstViewController.tabBarItem = firstTabBarItem
        let secondViewController = UINavigationController(rootViewController: ForecastViewController())
        let secondTabBarItem = UITabBarItem(title: kForecast,
                                            image: UIImage(named: "Forecast Active (Tab)"),
                                            selectedImage: UIImage(named: "Forecast Inactive (Tab)"))
        secondViewController.tabBarItem = secondTabBarItem
        self.viewControllers = [firstViewController, secondViewController]
    }
    
    private func setupTabBarLayout() {
        self.tabBar.barTintColor = .white
        self.tabBar.unselectedItemTintColor = UIColor.init(netHex: kUnselectedItemTabBarColor)
        self.tabBar.isTranslucent = false
    }
}
