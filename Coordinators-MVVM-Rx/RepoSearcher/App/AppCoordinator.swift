//
//  AppCoordinator.swift
//  RepoSearcher
//
//  Created by Andriy P on 6/29/17.
//  Copyright © 2017 PowerMobileWeb Team. All rights reserved.
//

import UIKit
import RxSwift

class AppCoordinator: BaseCoordinator<Void> {

    private let window: UIWindow

    init(window: UIWindow) {
        self.window = window
    }

    override func start() -> Observable<Void> {
        let repositoryListCoordinator = RepositoryListCoordinator(window: window)
        return coordinate(to: repositoryListCoordinator)
    }
}
