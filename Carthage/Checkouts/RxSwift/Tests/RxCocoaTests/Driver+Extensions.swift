//
//  Driver+Extensions.swift
//  Tests
//
//  Created by PowerMobile Team on 12/25/15.
//  Copyright © 2015 PowerMobile Team. All rights reserved.
//

import RxCocoa

extension SharedSequence : Equatable {

}

public func == <S, T>(lhs: SharedSequence<S, T>, rhs: SharedSequence<S, T>) -> Bool {
    return lhs.asObservable() === rhs.asObservable()
}
