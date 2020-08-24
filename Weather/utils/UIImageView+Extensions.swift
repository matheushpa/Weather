//
//  UIImageView+Extensions.swift
//  Weather
//
//  Created by Matheus Holanda Pinheiro de Albuquerque on 24/08/20.
//  Copyright © 2020 Matheus Holanda. All rights reserved.
//

import UIKit

extension UIImageView {

    func configureImageView(imageName: String, contentMode: ContentMode, cornerRadius: CGFloat? = nil, alignmentInsets: UIEdgeInsets? = nil) {
        if let insets = alignmentInsets {
            self.image = UIImage(named: imageName)?.withAlignmentRectInsets(insets)
        } else {
            self.image = UIImage(named: imageName)
        }
        self.contentMode = contentMode
        self.layer.cornerRadius = cornerRadius ?? 0
        self.clipsToBounds = true
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}
