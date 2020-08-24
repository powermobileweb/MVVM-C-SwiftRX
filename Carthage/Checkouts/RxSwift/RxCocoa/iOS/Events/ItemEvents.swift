//
//  ItemEvents.swift
//  RxCocoa
//
//  Created by PowerMobile Team on 6/20/15.
//  Copyright © 2015 PowerMobile Team. All rights reserved.
//

#if os(iOS) || os(tvOS)
import UIKit

public typealias ItemMovedEvent = (sourceIndex: IndexPath, destinationIndex: IndexPath)
public typealias WillDisplayCellEvent = (cell: UITableViewCell, indexPath: IndexPath)
public typealias DidEndDisplayingCellEvent = (cell: UITableViewCell, indexPath: IndexPath)
#endif
