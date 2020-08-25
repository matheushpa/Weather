//
//  WeatherStatus.swift
//  Weather
//
//  Created by Matheus Holanda Pinheiro de Albuquerque on 25/08/20.
//  Copyright © 2020 Matheus Holanda. All rights reserved.
//

import UIKit

class WeatherStatusView: UIView {

    private lazy var weatherImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.configureImageView(imageName: kToday + " Few Clouds (Night)",
                                     contentMode: .scaleAspectFit)
        return imageView
    }()
    
    private lazy var compassImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.configureImageView(imageName: "Current Location (Other)",
                                     contentMode: .scaleAspectFit)
        return imageView
    }()
    
    private lazy var locationLabel: UILabel = {
        let label = UILabel()
        label.configureLabel(text: "Prague, Czech Republic",
                             alignment: .left,
                             fontName: kMedium,
                             fontSize: 16,
                             color: .black)
        return label
    }()
    
    private lazy var temperatureLabel: UILabel = {
        let label = UILabel()
        label.configureLabel(text: "22°C  |  Sunny",
                             alignment: .center,
                             fontName: kMedium,
                             fontSize: 20,
                             color: UIColor.init(netHex: kBlueColor))
        return label
    }()
    
    private override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
        setupConstraints()
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Setup views
    
    private func setupViews() {
        self.addSubviews(weatherImageView, compassImageView, locationLabel, temperatureLabel)
    }
    
    private func setupConstraints() {
        locationLabel.addConstraintToCenterHorizontally()
        locationLabel.addConstraintToCenterVertically()
        compassImageView.trailingAnchor.constraint(equalTo: locationLabel.leadingAnchor, constant: -8).isActive = true
        compassImageView.centerYAnchor.constraint(equalTo: locationLabel.centerYAnchor).isActive = true
        weatherImageView.bottomAnchor.constraint(equalTo: locationLabel.topAnchor, constant: -16).isActive = true
        weatherImageView.centerXAnchor.constraint(equalTo: locationLabel.centerXAnchor).isActive = true
        temperatureLabel.topAnchor.constraint(equalTo: locationLabel.bottomAnchor, constant: 16).isActive = true
        temperatureLabel.centerXAnchor.constraint(equalTo: locationLabel.centerXAnchor).isActive = true
    }
}
