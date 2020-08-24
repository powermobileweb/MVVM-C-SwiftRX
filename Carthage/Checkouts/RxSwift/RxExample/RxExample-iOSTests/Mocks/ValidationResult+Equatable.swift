//
//  ValidationResult+Equatable.swift
//  RxExample
//
//  Created by PowerMobile Team on 12/29/15.
//  Copyright © 2015 PowerMobile Team. All rights reserved.
//

// MARK: Equatable

extension ValidationResult : Equatable {

}

func == (lhs: ValidationResult, rhs: ValidationResult) -> Bool {
    switch (lhs, rhs) {
    case (.ok, .ok):
        return true
    case (.empty, .empty):
        return true
    case (.validating, .validating):
        return true
    case (.failed, .failed):
        return true
    default:
        return false
    }
}
