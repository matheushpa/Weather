//
//  WeatherDetails.swift
//  Weather
//
//  Created by Matheus Holanda Pinheiro de Albuquerque on 25/08/20.
//  Copyright © 2020 Matheus Holanda. All rights reserved.
//

import UIKit

class WeatherDetailsView: UIView {

    private lazy var firstStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.configureStackView(spacing: 16,
                                     axis: .vertical)
        return stackView
    }()
    
    private lazy var secondStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.configureStackView(spacing: 16,
                                     axis: .vertical)
        return stackView
    }()
    
    private lazy var mainStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.configureStackView(spacing: 16,
                                     axis: .vertical)
        return stackView
    }()
}
