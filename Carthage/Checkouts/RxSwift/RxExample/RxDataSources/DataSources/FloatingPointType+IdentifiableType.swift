//
//  FloatingPointType+IdentifiableType.swift
//  RxDataSources
//
//  Created by PowerMobile Team on 7/4/16.
//  Copyright © 2016 PowerMobile Team. All rights reserved.
//

import Foundation

extension FloatingPoint {
    typealias identity = Self

    public var identity: Self {
        return self
    }
}

extension Float : IdentifiableType {

}

extension Double : IdentifiableType {

}
