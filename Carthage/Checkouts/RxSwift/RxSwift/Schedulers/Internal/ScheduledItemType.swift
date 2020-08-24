//
//  ScheduledItemType.swift
//  RxSwift
//
//  Created by PowerMobile Team on 11/7/15.
//  Copyright © 2015 PowerMobile Team. All rights reserved.
//

protocol ScheduledItemType
    : Cancelable
    , InvocableType {
    func invoke()
}
