//
//  String+Validations.swift
//  Utilities
//
//  Created by Juan Carlos Yu on 11/07/2018.
//  Copyright © 2018 Ximity Inc. All rights reserved.
//

import Foundation
import UIKit

extension String {
    public var isEmail: Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,20}"
        let emailTest  = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: self)
    }
}
