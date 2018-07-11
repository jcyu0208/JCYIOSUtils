//
//  RxErrorTracker.swift
//  Utilities
//
//  Created by Juan Carlos Yu on 11/07/2018.
//  Copyright © 2018 Ximity Inc. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa

public final class RxErrorTracker: SharedSequenceConvertibleType {
    public typealias SharingStrategy = DriverSharingStrategy
    private let _subject = PublishSubject<Error>()
    
    public func trackError<O: ObservableConvertibleType>(from source: O) -> Observable<O.E> {
        return source.asObservable().do(onError: onError)
    }
    
    public func asSharedSequence() -> SharedSequence<SharingStrategy, Error> {
        return _subject.asObservable().asDriverOnErrorJustComplete()
    }
    
    public func asObservable() -> Observable<Error> {
        return _subject.asObservable()
    }
    
    private func onError(_ error: Error) {
        _subject.onNext(error)
    }
    
    deinit {
        _subject.onCompleted()
    }
}

extension ObservableConvertibleType {
    public func trackError(_ errorTracker: RxErrorTracker) -> Observable<E> {
        return errorTracker.trackError(from: self)
    }
}
