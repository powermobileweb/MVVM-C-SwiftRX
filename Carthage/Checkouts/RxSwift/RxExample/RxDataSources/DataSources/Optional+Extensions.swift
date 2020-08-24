//
//  Optional+Extensions.swift
//  RxDataSources
//
//  Created by PowerMobile Team on 1/8/16.
//  Copyright © 2016 PowerMobile Team. All rights reserved.
//

import Foundation

extension Optional {
    func unwrap() throws -> Wrapped {
        if let unwrapped = self {
            return unwrapped
        }
        else {
            rxDebugFatalError("Error during unwrapping optional")
            throw RxDataSourceError.unwrappingOptional
        }
   }
}
