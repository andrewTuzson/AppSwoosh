//
//  BorderButton.swift
//  AppSwoosh
//
//  Created by Andrew Tuzson on 2/17/18.
//  Copyright © 2018 Andrew Tuzson. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderColor = UIColor.white.cgColor
        layer.borderWidth = 3.0
    }

}
