//
//  SectionModelType.swift
//  RxDataSources
//
//  Created by PowerMobile Team on 6/28/15.
//  Copyright © 2015 PowerMobile Team. All rights reserved.
//

import Foundation

public protocol SectionModelType {
    associatedtype Item

    var items: [Item] { get }

    init(original: Self, items: [Item])
}