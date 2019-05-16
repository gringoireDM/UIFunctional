//
//  UIControl.swift
//  UIFunctional
//
//  Created by Giuseppe Lanza on 14/05/2019.
//  Copyright © 2019 MERLin Tech. All rights reserved.
//

import UIKit

public extension UIControl {
    @discardableResult
    func setEnabled(_ enabled: Bool) -> Self {
        isEnabled = enabled
        return self
    }
    
    @discardableResult
    func setSelected(_ selected: Bool) -> Self {
        isSelected = selected
        return self
    }
    
    @discardableResult
    func setHighlighted(_ highlighted: Bool) -> Self {
        isHighlighted = highlighted
        return self
    }
    
    @discardableResult
    func setContentVerticalAlignment(_ alignment: UIControl.ContentVerticalAlignment) -> Self {
        contentVerticalAlignment = alignment
        return self
    }
    
    @discardableResult
    func setContentHorizontalAlignment(_ alignment: UIControl.ContentHorizontalAlignment) -> Self {
        contentHorizontalAlignment = alignment
        return self
    }
    
    @discardableResult
    func addingTarget(_ target: Any?, action: Selector, for controlEvents: UIControl.Event) -> Self {
        addTarget(target, action: action, for: controlEvents)
        return self
    }
}
