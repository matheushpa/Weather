//
//  ForecastTableViewCell.swift
//  Weather
//
//  Created by Matheus Holanda Pinheiro de Albuquerque on 22/08/20.
//  Copyright © 2020 Matheus Holanda. All rights reserved.
//

import UIKit

class ForecastTableViewCell: UITableViewCell {
    
    private lazy var weatherImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.configureImageView(imageName: "Few Clouds (Night)",
                                     contentMode: .scaleAspectFill)
        return imageView
    }()
    
    private lazy var temperatureLabel: UILabel = {
        let label = UILabel()
        label.configureLabel(fontName: kLight,
                             fontSize: 48,
                             color: UIColor.init(netHex: kBlueColor))
        return label
    }()
    
    private lazy var timeLabel: UILabel = {
        let label = UILabel()
        label.configureLabel(fontName: kMedium,
                             fontSize: 14,
                             color: .black)
        return label
    }()
    
    private lazy var weatherLabel: UILabel = {
        let label = UILabel()
        label.configureLabel(fontName: kMedium,
                             fontSize: 14,
                             color: .black)
        return label
    }()
    
    private lazy var stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.configureStackView(spacing: 4,
                                     axis: .vertical)
        return stackView
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.selectionStyle = .none
        self.backgroundColor = .white
        setupViews()
        setupConstraints()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Setup methods
    
    private func setupViews() {
        stackView.addArrangedSubviews(timeLabel, weatherLabel)
        contentView.addSubviews(weatherImageView, stackView, temperatureLabel)
    }
    
    private func setupConstraints() {
        weatherImageView.addLeadingConstraint(constant: 16)
        weatherImageView.addConstraintToCenterVertically()
        
        timeLabel.text = "22:00"
        weatherLabel.text = "Few Clouds"
        stackView.addConstraintToCenterVertically()
        stackView.addLeadingConstraint(constant: 92)
        
        temperatureLabel.text = "9°"
        temperatureLabel.addConstraintToCenterVertically()
        temperatureLabel.addTrailingConstraint(constant: -16)
    }
}
