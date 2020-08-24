//
//  ForecastHeader.swift
//  Weather
//
//  Created by Matheus Holanda Pinheiro de Albuquerque on 22/08/20.
//  Copyright © 2020 Matheus Holanda. All rights reserved.
//

import UIKit

class ForecastHeader: UITableViewHeaderFooterView {

    private lazy var currentDayLabel: UILabel = {
        let label = UILabel()
        label.configureLabel(text: "TODAY",
                             fontName: kSemiBold,
                             fontSize: 14,
                             color: .black)
        return label
    }()

    // TODO: - Reuse those line views
    private lazy var topLightGrayView: UIView = {
        let view = UIView(frame: .zero)
        view.configureView(backgroundColor: .gray)
        return view
    }()
    
    private lazy var bottomLightGrayView: UIView = {
        let view = UIView(frame: .zero)
        view.configureView(backgroundColor: .gray)
        return view
    }()
    
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        self.tintColor = .white
        setupTitle()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    // MARK: - Setup methods
    
    func setupTitle() {
        self.addSubviews(currentDayLabel, topLightGrayView, bottomLightGrayView)
        currentDayLabel.addConstraintToCenterVertically()
        currentDayLabel.addLeadingConstraint(constant: 16)
        topLightGrayView.addHeightConstraint(constant: 1)
        topLightGrayView.addTopConstraint()
        topLightGrayView.addLeadingConstraint()
        topLightGrayView.addTrailingConstraint()
        bottomLightGrayView.addHeightConstraint(constant: 1)
        bottomLightGrayView.addBottomConstraint()
        bottomLightGrayView.addLeadingConstraint()
        bottomLightGrayView.addTrailingConstraint()
    }
}
