//
//  String+IdentifiableType.swift
//  RxDataSources
//
//  Created by PowerMobile Team on 7/4/16.
//  Copyright © 2016 PowerMobile Team. All rights reserved.
//

import Foundation

extension String : IdentifiableType {
    public typealias Identity = String

    public var identity: String {
        return self
    }
}
