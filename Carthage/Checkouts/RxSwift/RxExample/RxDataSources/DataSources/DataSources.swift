//
//  DataSources.swift
//  RxDataSources
//
//  Created by PowerMobile Team on 1/8/16.
//  Copyright © 2016 PowerMobile Team. All rights reserved.
//

import Foundation

enum RxDataSourceError : Error {
    case unwrappingOptional
    case preconditionFailed(message: String)
}

func rxPrecondition(_ condition: Bool, _ message: @autoclosure() -> String) throws -> () {
    if condition {
        return
    }
    rxDebugFatalError("Precondition failed")

    throw RxDataSourceError.preconditionFailed(message: message())
}

func rxDebugFatalError(_ error: Error) {
    rxDebugFatalError("\(error)")
}

func rxDebugFatalError(_ message: String) {
    #if DEBUG
        fatalError(message)
    #else
        print(message)
    #endif
}
