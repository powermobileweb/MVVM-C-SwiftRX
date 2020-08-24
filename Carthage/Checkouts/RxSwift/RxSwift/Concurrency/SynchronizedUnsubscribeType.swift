//
//  SynchronizedUnsubscribeType.swift
//  RxSwift
//
//  Created by PowerMobile Team on 10/25/15.
//  Copyright © 2015 PowerMobile Team. All rights reserved.
//

protocol SynchronizedUnsubscribeType : class {
    associatedtype DisposeKey

    func synchronizedUnsubscribe(_ disposeKey: DisposeKey)
}
