//
//  Recorded+Timeless.swift
//  Tests
//
//  Created by PowerMobile Team on 12/25/15.
//  Copyright © 2015 PowerMobile Team. All rights reserved.
//

import RxTest
import RxSwift

func next<T>(_ value: T) -> Recorded<Event<T>> {
    return Recorded(time: 0, value: .next(value))
}

func completed<T>() -> Recorded<Event<T>> {
    return Recorded(time: 0, value: .completed)
}

func error<T>(_ error: Swift.Error) -> Recorded<Event<T>> {
    return Recorded(time: 0, value: .error(error))
}
