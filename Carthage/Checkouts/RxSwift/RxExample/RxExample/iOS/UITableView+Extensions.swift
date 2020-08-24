//
//  UITableView+Extensions.swift
//  RxExample
//
//  Created by PowerMobile Team on 8/20/16.
//  Copyright © 2016 PowerMobile Team. All rights reserved.
//

import UIKit

extension UITableView {
    func hideEmptyCells() {
        self.tableFooterView = UIView(frame: .zero)
    }
}
