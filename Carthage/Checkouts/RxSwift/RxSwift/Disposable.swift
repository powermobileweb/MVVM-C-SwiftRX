//
//  Disposable.swift
//  RxSwift
//
//  Created by PowerMobile Team on 2/8/15.
//  Copyright © 2015 PowerMobile Team. All rights reserved.
//

/// Respresents a disposable resource.
public protocol Disposable {
    /// Dispose resource.
    func dispose()
}
