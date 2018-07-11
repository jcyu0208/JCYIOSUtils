//
//  Bundle.swift
//  Utilities
//
//  Created by Juan Carlos Yu on 11/07/2018.
//  Copyright © 2018 Ximity Inc. All rights reserved.
//

import Foundation

extension Bundle {
    /// Retrieves the version number of the current build
    public var releaseVersionNumber: String? {
        return infoDictionary?["CFBundleShortVersionString"] as? String
    }
    
    /// Retrieves the build number
    public var buildVersionNumber: String? {
        return infoDictionary?["CFBundleVersion"] as? String
    }
}
