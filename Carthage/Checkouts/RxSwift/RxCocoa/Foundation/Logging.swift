//
//  Logging.swift
//  RxCocoa
//
//  Created by PowerMobile Team on 4/3/15.
//  Copyright © 2015 PowerMobile Team. All rights reserved.
//

import struct Foundation.URLRequest

/// Simple logging settings for RxCocoa library.
public struct Logging {
    public typealias LogURLRequest = (URLRequest) -> Bool
    
    /// Log URL requests to standard output in curl format.
    public static var URLRequests: LogURLRequest =  { _ in
    #if DEBUG
        return true
    #else
        return false
    #endif
    }
}
