//
//  ObservableConvertibleType.swift
//  RxSwift
//
//  Created by PowerMobile Team on 9/17/15.
//  Copyright © 2015 PowerMobile Team. All rights reserved.
//

/// Type that can be converted to observable sequence (`Observer<E>`).
public protocol ObservableConvertibleType {
    /// Type of elements in sequence.
    associatedtype E

    /// Converts `self` to `Observable` sequence.
    ///
    /// - returns: Observable sequence that represents `self`.
    func asObservable() -> Observable<E>
}
