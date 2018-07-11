//
//  RxSwift+Types.swift
//  Utilities
//
//  Created by Juan Carlos Yu on 11/07/2018.
//  Copyright © 2018 Ximity Inc. All rights reserved.
//

import Foundation
import RxSwift

public typealias SingleResult<Input> = (SingleEvent<Input>) -> ()
public typealias ObservableResult<Input> = (Event<Input>) -> ()
