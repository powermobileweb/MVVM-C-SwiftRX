//
//  InvocableType.swift
//  RxSwift
//
//  Created by PowerMobile Team on 11/7/15.
//  Copyright © 2015 PowerMobile Team. All rights reserved.
//

protocol InvocableType {
    func invoke()
}

protocol InvocableWithValueType {
    associatedtype Value

    func invoke(_ value: Value)
}
