//
//  AnimatableSectionModelType+ItemPath.swift
//  RxDataSources
//
//  Created by PowerMobile Team on 1/9/16.
//  Copyright © 2016 PowerMobile Team. All rights reserved.
//

import Foundation

extension Array where Element: AnimatableSectionModelType {
    subscript(index: ItemPath) -> Element.Item {
        return self[index.sectionIndex].items[index.itemIndex]
    }
}