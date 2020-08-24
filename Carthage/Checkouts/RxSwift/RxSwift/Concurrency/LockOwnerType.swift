//
//  LockOwnerType.swift
//  RxSwift
//
//  Created by PowerMobile Team on 10/25/15.
//  Copyright © 2015 PowerMobile Team. All rights reserved.
//

protocol LockOwnerType : class, Lock {
    var _lock: RecursiveLock { get }
}

extension LockOwnerType {
    func lock() {
        _lock.lock()
    }

    func unlock() {
        _lock.unlock()
    }
}
