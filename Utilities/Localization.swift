//
//  Localization.swift
//  Utilities
//
//  Created by Juan Carlos Yu on 11/07/2018.
//  Copyright © 2018 Ximity Inc. All rights reserved.
//

import UIKit

extension String {
    
    /// Get the localized value for the string
    func localized(bundle: Bundle = .main, tableName: String = "Localizable") -> String {
        return NSLocalizedString(self, tableName: tableName, bundle: .main, value: "**\(self)**", comment: "")
    }
}

public protocol Localizable {
    var tableName: String { get }
    var localized: String { get }
}

extension Localizable where Self: RawRepresentable, Self.RawValue == String {
    /// The localized value for the string
    public var localized: String {
        return rawValue.localized(tableName: tableName)
    }
}
