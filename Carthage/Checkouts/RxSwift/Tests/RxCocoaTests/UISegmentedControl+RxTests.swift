//
//  UISegmentedControl+RxTests.swift
//  Tests
//
//  Created by PowerMobile Team on 11/26/16.
//  Copyright © 2016 PowerMobile Team. All rights reserved.
//

import RxCocoa
import RxSwift
import RxTest
import XCTest

final class UISegmentedControlTests: RxTest {
    
}

extension UISegmentedControlTests {
    func testSegmentedControl_ValueCompletesOnDealloc() {
        let createView: () -> UISegmentedControl = { UISegmentedControl(items: ["a", "b", "c"]) }
        ensurePropertyDeallocated(createView, 1) { (view: UISegmentedControl) in view.rx.value }
    }

    func testSegmentedControl_SelectedSegmentIndexCompletesOnDealloc() {
        let createView: () -> UISegmentedControl = { UISegmentedControl(items: ["a", "b", "c"]) }
        ensurePropertyDeallocated(createView, 1) { (view: UISegmentedControl) in view.rx.selectedSegmentIndex }
    }
}
