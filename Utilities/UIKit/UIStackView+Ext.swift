//
//  UIStackView.swift
//  Utilities
//
//  Created by Juan Carlos Yu on 11/07/2018.
//  Copyright © 2018 Ximity Inc. All rights reserved.
//

import Foundation
import UIKit

extension UIStackView {
    public func removeAllArrangedSubviews() {
        let removedSubviews = arrangedSubviews.reduce([]) { (allSubviews, subview) -> [UIView] in
            self.removeArrangedSubview(subview)
            return allSubviews + [subview]
        }
        
        // Deactivate all constraints
        NSLayoutConstraint.deactivate(removedSubviews.flatMap({ $0.constraints }))
        
        // Remove the views from self
        removedSubviews.forEach({ $0.removeFromSuperview() })
    }
}

