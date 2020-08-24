//
//  SynchronizedOnType.swift
//  RxSwift
//
//  Created by PowerMobile Team on 10/25/15.
//  Copyright © 2015 PowerMobile Team. All rights reserved.
//

protocol SynchronizedOnType : class, ObserverType, Lock {
    func _synchronized_on(_ event: Event<E>)
}

extension SynchronizedOnType {
    func synchronizedOn(_ event: Event<E>) {
        lock(); defer { unlock() }
        _synchronized_on(event)
    }
}
