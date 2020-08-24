//
//  AnimatableSectionModelType.swift
//  RxDataSources
//
//  Created by PowerMobile Team on 1/6/16.
//  Copyright © 2016 PowerMobile Team. All rights reserved.
//

import Foundation

public protocol AnimatableSectionModelType
    : SectionModelType
    , IdentifiableType {
    associatedtype Item : IdentifiableType, Equatable
}