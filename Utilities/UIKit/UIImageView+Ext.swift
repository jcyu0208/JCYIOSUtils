//
//  UIImageView+Ext.swift
//  Utilities
//
//  Created by Juan Carlos Yu on 11/07/2018.
//  Copyright © 2018 Ximity Inc. All rights reserved.
//

import Foundation
import UIKit

extension UIImageView {
    
    public func circular() {
        layer.cornerRadius = frame.size.height / 2
        clipsToBounds = true
    }
}
