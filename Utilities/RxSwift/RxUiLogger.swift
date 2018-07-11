//
//  RxUiLogger.swift
//  Utilities
//
//  Created by Juan Carlos Yu on 11/07/2018.
//  Copyright © 2018 Ximity Inc. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa

public protocol UiLoggerType {
    func trackClick(name: String)
    func trackView(name: String)
}

public class RxUiLogger: SharedSequenceConvertibleType {
    public typealias SharingStrategy = DriverSharingStrategy
    public typealias E = Void
    
    private let uiLogger: UiLoggerType
    private let screenName: String
    
    public init (uiLogger: UiLoggerType, screenName: String) {
        self.uiLogger = uiLogger
        self.screenName = screenName
    }
    
    public func asSharedSequence() -> SharedSequence<DriverSharingStrategy, E> {
        return Driver.just(())
    }
    
    fileprivate func trackClick<O: ObservableConvertibleType>(_ source: O, name: String) -> Observable<O.E> {
        return source.asObservable()
            .do(onNext: { _ in
                self.uiLogger.trackClick(name: name)
            })
    }
    
    fileprivate func trackView<O: ObservableConvertibleType>(_ source: O) -> Observable<O.E> {
        return source.asObservable()
            .do(onNext: { _ in
                self.uiLogger.trackView(name: self.screenName)
            })
    }
}

extension ObservableConvertibleType {
    public func logClick(_ logger: RxUiLogger, name: String) -> Observable<E> {
        return logger.trackClick(self, name: name)
    }
    
    public func logView(_ logger: RxUiLogger) -> Observable<E> {
        return logger.trackView(self)
    }
}
