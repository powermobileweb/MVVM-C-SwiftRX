//
//  MainThreadPrimitiveHotObservable.swift
//  Tests
//
//  Created by PowerMobile Team on 10/14/15.
//  Copyright © 2015 PowerMobile Team. All rights reserved.
//

import RxSwift
import XCTest
import Dispatch

final class MainThreadPrimitiveHotObservable<ElementType: Equatable> : PrimitiveHotObservable<ElementType> {
    override func subscribe<O : ObserverType>(_ observer: O) -> Disposable where O.E == E {
        XCTAssertTrue(DispatchQueue.isMain)
        return super.subscribe(observer)
    }
}
