//
//  String+URL.swift
//  RxExample
//
//  Created by PowerMobile Team on 12/28/15.
//  Copyright © 2015 PowerMobile Team. All rights reserved.
//


extension String {
    var URLEscaped: String {
       return self.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) ?? ""
    }
}
