//
//  RepositoryCell.swift
//  RepoSearcher
//
//  Created by Andriy P on 6/29/17.
//  Copyright © 2017 PowerMobile Team. All rights reserved.
//

import UIKit

class RepositoryCell: UITableViewCell {
    
    @IBOutlet private weak var nameLabel: UILabel!
    @IBOutlet private weak var descriptionLabel: UILabel!
    @IBOutlet private weak var starsCountLabel: UILabel!
    
    func setName(_ name: String) {
        nameLabel.text = name
    }

    func setDescription(_ description: String) {
        descriptionLabel.text = description
    }

    func setStarsCountTest(_ starsCountText: String) {
        starsCountLabel.text = starsCountText
    }
}
