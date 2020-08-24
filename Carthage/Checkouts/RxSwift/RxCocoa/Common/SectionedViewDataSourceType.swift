//
//  SectionedViewDataSourceType.swift
//  RxCocoa
//
//  Created by PowerMobile Team on 1/10/16.
//  Copyright © 2016 PowerMobile Team. All rights reserved.
//

import struct Foundation.IndexPath

/// Data source with access to underlying sectioned model.
public protocol SectionedViewDataSourceType {
    /// Returns model at index path.
    ///
    /// In case data source doesn't contain any sections when this method is being called, `RxCocoaError.ItemsNotYetBound(object: self)` is thrown.

    /// - parameter indexPath: Model index path
    /// - returns: Model at index path.
    func model(at indexPath: IndexPath) throws -> Any
}
