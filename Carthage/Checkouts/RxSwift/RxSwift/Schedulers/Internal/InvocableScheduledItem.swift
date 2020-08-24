//
//  InvocableScheduledItem.swift
//  RxSwift
//
//  Created by PowerMobile Team on 11/7/15.
//  Copyright © 2015 PowerMobile Team. All rights reserved.
//

struct InvocableScheduledItem<I: InvocableWithValueType> : InvocableType {

    let _invocable: I
    let _state: I.Value

    init(invocable: I, state: I.Value) {
        _invocable = invocable
        _state = state
    }

    func invoke() {
        _invocable.invoke(_state)
    }
}
