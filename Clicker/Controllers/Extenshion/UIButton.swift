//
//  UIButton.swift
//  Clicker
//
//  Created by Евгений on 20/01/2019.
//  Copyright © 2019 Evgeniy. All rights reserved.
//

import UIKit

extension UIButton {
    func setAppearance() {
        self.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0)
        self.titleLabel?.font = .systemFont(ofSize: 46)
        self.tintColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.layer.borderWidth = 1
        self.layer.borderColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.layer.cornerRadius = 20
    }
}
