//
//  UILabel+Extensions.swift
//  Weather
//
//  Created by Matheus Holanda Pinheiro de Albuquerque on 24/08/20.
//  Copyright © 2020 Matheus Holanda. All rights reserved.
//

import UIKit

extension UILabel {

    func configureLabel(text: String? = nil, alignment: NSTextAlignment? = nil, numberOfLines: Int? = nil, fontName: String, fontSize: CGFloat, color: UIColor) {
        self.text = text ?? ""
        self.textColor = color
        self.font = UIFont(name: fontName, size: fontSize)
        self.textAlignment = alignment ?? .left
        self.numberOfLines = numberOfLines ?? 0
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}
