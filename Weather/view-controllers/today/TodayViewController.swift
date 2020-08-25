//
//  TodayViewController.swift
//  Weather
//
//  Created by Matheus Holanda Pinheiro de Albuquerque on 22/08/20.
//  Copyright © 2020 Matheus Holanda. All rights reserved.
//

import UIKit

class TodayViewController: BaseViewController {
    
    private lazy var shareButton: UIButton = {
        let button = UIButton(type: .system)
        button.configureButtonWithText(text: kShare,
                                       fontName: kMedium,
                                       fontSize: 16,
                                       textColor: .orange)
        button.addTarget(self, action: #selector(shareWeather), for: .touchUpInside)
        return button
    }()
    
    private lazy var weatherStatusView: WeatherStatusView = {
        let view = WeatherStatusView()
        view.configureView(backgroundColor: .white)
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setupConstraints()
    }
    
    // MARK: - Setup methods
    
    func setupViews() {
        view.addSubviews(weatherStatusView, shareButton)
    }
    
    func setupConstraints() {
        shareButton.addConstraintToCenterHorizontally()
        shareButton.addBottomConstraint(constant: -48)
        weatherStatusView.addTopConstraint()
        weatherStatusView.addLeadingConstraint()
        weatherStatusView.addTrailingConstraint()
        weatherStatusView.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor, multiplier: 1).isActive = true
        weatherStatusView.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor, multiplier: 0.5).isActive = true
    }
    
    // MARK: - Action methods
    
    @objc func shareWeather() {
        
    }
}
