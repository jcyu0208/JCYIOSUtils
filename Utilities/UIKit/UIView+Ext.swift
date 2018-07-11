//
//  UIView+Ext.swift
//  Utilities
//
//  Created by Juan Carlos Yu on 11/07/2018.
//  Copyright © 2018 Ximity Inc. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    public func roundedCorner(borderWidth: CGFloat, radius: CGFloat) {
        layer.borderWidth = borderWidth
        layer.cornerRadius = radius
        clipsToBounds = true
    }
}
