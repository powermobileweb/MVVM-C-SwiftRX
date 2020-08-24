//
//  RecursiveLock.swift
//  Platform
//
//  Created by PowerMobile Team on 12/18/16.
//  Copyright © 2016 PowerMobile Team. All rights reserved.
//

import class Foundation.NSRecursiveLock

#if TRACE_RESOURCES
    class RecursiveLock: NSRecursiveLock {
        override init() {
            _ = Resources.incrementTotal()
            super.init()
        }

        override func lock() {
            super.lock()
            _ = Resources.incrementTotal()
        }

        override func unlock() {
            super.unlock()
            _ = Resources.decrementTotal()
        }

        deinit {
            _ = Resources.decrementTotal()
        }
    }
#else
    typealias RecursiveLock = NSRecursiveLock
#endif
