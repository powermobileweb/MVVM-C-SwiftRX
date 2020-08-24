//
//  RxCollectionViewSectionedReloadDataSource.swift
//  RxExample
//
//  Created by PowerMobile Team on 7/2/15.
//  Copyright © 2015 PowerMobile Team. All rights reserved.
//

import Foundation
import UIKit
#if !RX_NO_MODULE
import RxSwift
import RxCocoa
#endif

open class RxCollectionViewSectionedReloadDataSource<S: SectionModelType>
    : CollectionViewSectionedDataSource<S>
    , RxCollectionViewDataSourceType {
    
    public typealias Element = [S]

    public override init() {
        super.init()
    }

    open func collectionView(_ collectionView: UICollectionView, observedEvent: Event<Element>) {
        UIBindingObserver(UIElement: self) { dataSource, element in
            #if DEBUG
                self._dataSourceBound = true
            #endif
            dataSource.setSections(element)
            collectionView.reloadData()
        }.on(observedEvent)
    }
}
