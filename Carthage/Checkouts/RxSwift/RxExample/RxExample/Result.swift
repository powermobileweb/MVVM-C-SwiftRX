//
//  Result.swift
//  RxExample
//
//  Created by PowerMobile Team on 3/18/17.
//  Copyright © 2017 PowerMobile Team. All rights reserved.
//

enum Result<T, E: Error> {
    case success(T)
    case failure(E)
}
