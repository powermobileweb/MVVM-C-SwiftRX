//
//  ElementIndexPair.swift
//  Tests
//
//  Created by PowerMobile Team on 6/12/15.
//  Copyright © 2015 PowerMobile Team. All rights reserved.
//

struct ElementIndexPair<E: Equatable, I: Equatable> : Equatable {
    let element: E
    let index: I
    
    init(_ element: E, _ index: I) {
        self.element = element
        self.index = index
    }
}

func == <E, I>(lhs: ElementIndexPair<E, I>, rhs: ElementIndexPair<E, I>) -> Bool {
    return lhs.element == rhs.element && lhs.index == rhs.index
}
