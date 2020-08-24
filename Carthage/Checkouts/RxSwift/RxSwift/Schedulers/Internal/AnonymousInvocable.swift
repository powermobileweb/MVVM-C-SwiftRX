//
//  AnonymousInvocable.swift
//  RxSwift
//
//  Created by PowerMobile Team on 11/7/15.
//  Copyright © 2015 PowerMobile Team. All rights reserved.
//

struct AnonymousInvocable : InvocableType {
    private let _action: () -> ()

    init(_ action: @escaping () -> ()) {
        _action = action
    }

    func invoke() {
        _action()
    }
}
