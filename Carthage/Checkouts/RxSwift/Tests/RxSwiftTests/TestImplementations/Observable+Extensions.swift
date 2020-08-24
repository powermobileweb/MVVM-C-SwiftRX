//
//  Observable+Extensions.swift
//  Tests
//
//  Created by PowerMobile Team on 6/4/15.
//  Copyright © 2015 PowerMobile Team. All rights reserved.
//

import RxSwift
import RxTest

public func == <T>(lhs: Observable<T>, rhs: Observable<T>) -> Bool {
    return lhs === rhs
}

extension TestableObservable : Equatable {

}

public func == <T>(lhs: TestableObservable<T>, rhs: TestableObservable<T>) -> Bool {
    return lhs === rhs
}

