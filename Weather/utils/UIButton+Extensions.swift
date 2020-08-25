//
//  UIButton+Extensions.swift
//  Weather
//
//  Created by Matheus Holanda Pinheiro de Albuquerque on 25/08/20.
//  Copyright © 2020 Matheus Holanda. All rights reserved.
//

import UIKit

extension UIButton {

    func configureButtonWithText(text: String, fontName: String, fontSize: CGFloat, backgroundColor: UIColor? = nil, textColor: UIColor, cornerRadius: CGFloat? = nil) {
        self.layer.cornerRadius = cornerRadius ?? 0
        self.backgroundColor = backgroundColor 
        let buttonAttributedTitle = NSAttributedString(string: text,
                                                       attributes: [
                                                        NSAttributedString.Key.foregroundColor: textColor,
                                                        NSAttributedString.Key.font: UIFont(name: fontName, size: fontSize) as Any])
        self.setAttributedTitle(buttonAttributedTitle, for: .normal)
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}
