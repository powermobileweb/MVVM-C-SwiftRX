//
//  UISlider+RxTests.swift
//  Tests
//
//  Created by PowerMobile Team on 11/26/16.
//  Copyright © 2016 PowerMobile Team. All rights reserved.
//

import RxCocoa
import RxSwift
import RxTest
import XCTest

#if os(iOS)

    final class UISliderTests: RxTest {

    }
    
    extension UISliderTests {
        func testSlider_DelegateEventCompletesOnDealloc() {
            let createView: () -> UISlider = { UISlider(frame: CGRect(x: 0, y: 0, width: 1, height: 1)) }
            ensurePropertyDeallocated(createView, 0.5) { (view: UISlider) in view.rx.value }
        }
    }

#endif
