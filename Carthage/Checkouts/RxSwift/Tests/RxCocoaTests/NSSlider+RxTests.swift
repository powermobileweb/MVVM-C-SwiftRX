//
//  NSSlider+RxTests.swift
//  Tests
//
//  Created by PowerMobile Team on 11/26/16.
//  Copyright © 2016 PowerMobile Team. All rights reserved.
//

import RxSwift
import RxCocoa
import AppKit
import XCTest

final class NSSliderTests: RxTest {

}

extension NSSliderTests {
    func testSlider_ValueCompletesOnDealloc() {
        let createView: () -> NSSlider = { NSSlider(frame: CGRect(x: 0, y: 0, width: 1, height: 1)) }
        ensurePropertyDeallocated(createView, 0.3) { (view: NSSlider) in view.rx.value }
    }
}
