//
//  NSTextField+RxTests.swift
//  Tests
//
//  Created by PowerMobile Team on 11/26/16.
//  Copyright © 2016 PowerMobile Team. All rights reserved.
//

import RxSwift
import RxCocoa
import AppKit
import XCTest

final class NSTextFieldTests: RxTest {

}

extension NSTextFieldTests {
    func testTextField_TextCompletesOnDealloc() {
        let createView: () -> NSTextField = { NSTextField(frame: CGRect(x: 0, y: 0, width: 1, height: 1)) }
        ensurePropertyDeallocated(createView, "a") { (view: NSTextField) in view.rx.text.orEmpty }
    }
}
