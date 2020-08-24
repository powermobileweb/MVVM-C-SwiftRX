//
//  SynchronizedDisposeType.swift
//  RxSwift
//
//  Created by PowerMobile Team on 10/25/15.
//  Copyright © 2015 PowerMobile Team. All rights reserved.
//

protocol SynchronizedDisposeType : class, Disposable, Lock {
    func _synchronized_dispose()
}

extension SynchronizedDisposeType {
    func synchronizedDispose() {
        lock(); defer { unlock() }
        _synchronized_dispose()
    }
}
