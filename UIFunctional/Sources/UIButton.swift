//
//  UIButton.swift
//  UIFunctional
//
//  Created by Giuseppe Lanza on 14/05/2019.
//  Copyright © 2019 MERLin Tech. All rights reserved.
//

import UIKit

public extension UIButton {
    @discardableResult
    func setTitleFont(_ font: UIFont, alignment: NSTextAlignment = .center) -> Self {
        titleLabel?.setFont(font)
            .setAlignment(alignment)
        return self
    }
    
    @discardableResult
    func setTitleShadow(color: UIColor?, offset: CGSize) -> Self {
        titleLabel?.setTextShadow(color: color)
            .setTextShadow(offset: offset)
        return self
    }
    
    @discardableResult
    func setTitleLayerShadow(color: UIColor?, offset: CGSize = .zero, path: CGPath? = nil, radius: CGFloat, opacity: CGFloat) -> Self {
        titleLabel?.setLayerShadow(color: color)
            .setLayerShadow(offset: offset)
            .setLayerShadow(path: path)
            .setLayerShadow(radius: radius)
            .setLayerShadow(opacity: opacity)
        return self
    }
    
    @discardableResult
    func resetBackgrounds() -> Self {
        return setBackgroundColor(nil, for: [.normal, .disabled, .highlighted, .focused])
    }
    
    @discardableResult
    func setBackgroundColor(_ color: UIColor?, for state: UIControl.State) -> Self {
        setBackgroundColor(.clear)
            .setBackgroundImage(color?.toImage(), for: state)
        return self
    }
    
    @discardableResult
    func setTitleTextColor(color: UIColor?, for state: UIControl.State) -> Self {
        setTitleColor(color, for: state)
        return self
    }
    
    @discardableResult
    func setTitleText(_ title: String?, for state: UIControl.State) -> Self {
        setTitle(title, for: state)
        return self
    }
}
