//
//  UIStackView+Extension.swift
//  СalculatorMVC
//
//  Created by Максим Нурутдинов on 17.07.2023.
//

import UIKit

extension UIStackView {
    
    convenience init(subviews: [UIView]) {
        self.init(arrangedSubviews: subviews)
        self.axis = .horizontal
        self.spacing = 1
        self.distribution = .fillEqually
    }
    
}
