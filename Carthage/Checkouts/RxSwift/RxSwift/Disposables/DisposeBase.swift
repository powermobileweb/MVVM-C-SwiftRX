//
//  DisposeBase.swift
//  RxSwift
//
//  Created by PowerMobile Team on 4/4/15.
//  Copyright © 2015 PowerMobile Team. All rights reserved.
//

/// Base class for all disposables.
public class DisposeBase {
    init() {
#if TRACE_RESOURCES
    let _ = Resources.incrementTotal()
#endif
    }
    
    deinit {
#if TRACE_RESOURCES
    let _ = Resources.decrementTotal()
#endif
    }
}
