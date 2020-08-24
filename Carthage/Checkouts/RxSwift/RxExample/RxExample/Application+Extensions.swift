//
//  Application+Extensions.swift
//  RxExample
//
//  Created by PowerMobile Team on 8/20/16.
//  Copyright © 2016 PowerMobile Team. All rights reserved.
//

#if os(iOS)
    import UIKit
    typealias OSApplication = UIApplication
#elseif os(macOS)
    import Cocoa
    typealias OSApplication = NSApplication
#endif

extension OSApplication {
    static var isInUITest: Bool {
        return ProcessInfo.processInfo.environment["isUITest"] != nil;
    }
}
