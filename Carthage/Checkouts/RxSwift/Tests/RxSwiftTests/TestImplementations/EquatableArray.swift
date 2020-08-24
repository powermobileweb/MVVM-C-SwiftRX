//
//  EquatableArray.swift
//  Tests
//
//  Created by PowerMobile Team on 10/15/15.
//  Copyright © 2015 PowerMobile Team. All rights reserved.
//

struct EquatableArray<Element: Equatable> : Equatable {
    let elements: [Element]
    init(_ elements: [Element]) {
        self.elements = elements
    }
}

func == <E: Equatable>(lhs: EquatableArray<E>, rhs: EquatableArray<E>) -> Bool {
    return lhs.elements == rhs.elements
}
