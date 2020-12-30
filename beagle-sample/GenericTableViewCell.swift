//
//  GenericTableViewCell.swift
//  beagle-sample
//
//  Created by Wesley Araujo on 29/12/20.
//  Copyright © 2020 Wesley Araujo. All rights reserved.
//

import UIKit

class GenericTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
