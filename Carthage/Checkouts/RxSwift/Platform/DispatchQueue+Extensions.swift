//
//  DispatchQueue+Extensions.swift
//  Platform
//
//  Created by PowerMobile Team on 10/22/16.
//  Copyright © 2016 PowerMobile Team. All rights reserved.
//

import Dispatch

extension DispatchQueue {
    private static var token: DispatchSpecificKey<()> = {
        let key = DispatchSpecificKey<()>()
        DispatchQueue.main.setSpecific(key: key, value: ())
        return key
    }()

    static var isMain: Bool {
        return DispatchQueue.getSpecific(key: token) != nil
    }
}
