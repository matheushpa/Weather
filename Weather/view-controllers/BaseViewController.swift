//
//  BaseViewController.swift
//  Weather
//
//  Created by Matheus Holanda Pinheiro de Albuquerque on 22/08/20.
//  Copyright © 2020 Matheus Holanda. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        navigationController?.navigationBar.barTintColor = .white
        navigationController?.navigationBar.isTranslucent = false
        navigationController?.navigationBar.shadowImage = UIImage(named: "Line")
        
        // TODO: - shadow image insets/content mode?
    }
}
