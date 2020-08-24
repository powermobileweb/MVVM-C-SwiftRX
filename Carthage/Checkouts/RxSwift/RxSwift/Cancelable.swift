//
//  Cancelable.swift
//  RxSwift
//
//  Created by PowerMobile Team on 3/12/15.
//  Copyright © 2015 PowerMobile Team. All rights reserved.
//

/// Represents disposable resource with state tracking.
public protocol Cancelable : Disposable {
    /// Was resource disposed.
    var isDisposed: Bool { get }
}
