//
//  CALayer.swift
//  UIFunctional
//
//  Created by Giuseppe Lanza on 14/05/2019.
//  Copyright © 2019 MERLin Tech. All rights reserved.
//

import UIKit

public extension CALayer {
    
    // MARK: Shadows
    
    @discardableResult
    func setShadow(color: UIColor?) -> Self {
        shadowColor = color?.cgColor
        return self
    }
    
    @discardableResult
    func setShadow(radius: CGFloat) -> Self {
        shadowRadius = radius
        return self
    }
    
    @discardableResult
    func setShadow(offset: CGSize) -> Self {
        shadowOffset = offset
        return self
    }
    
    @discardableResult
    func setShadow(path: CGPath?) -> Self {
        shadowPath = path
        return self
    }
    
    @discardableResult
    func setShadow(opacity: CGFloat) -> Self {
        shadowOpacity = Float(opacity)
        return self
    }
    
    // MARK: Position
    
    @discardableResult
    func setFrame(_ frame: CGRect) -> Self {
        self.frame = frame
        return self
    }
    
    @discardableResult
    func setAnchorPoint(_ anchorPoint: CGPoint) -> Self {
        self.anchorPoint = anchorPoint
        return self
    }
    
    @discardableResult
    func setTransform3D(_ transform3D: CATransform3D) -> Self {
        transform = transform3D
        return self
    }
    
    // MARK: Borders
    
    @discardableResult
    func setCorner(_ radius: CGFloat) -> Self {
        cornerRadius = radius
        return self
    }
    
    @discardableResult
    func setBorder(color: UIColor?) -> Self {
        borderColor = color?.cgColor
        return self
    }
    
    @discardableResult
    func setBorder(width: CGFloat) -> Self {
        borderWidth = width
        return self
    }
    
    @discardableResult
    func setMasksToBounds(_ masksToBounds: Bool) -> Self {
        self.masksToBounds = masksToBounds
        return self
    }
    
    @discardableResult @available(iOS 11.0, *)
    func setMaskedCorners(_ maskedCorners: CACornerMask) -> Self {
        self.maskedCorners = maskedCorners
        return self
    }
    
    // MARK: Misc
    
    @discardableResult
    func setBackgroundColor(_ color: UIColor?) -> Self {
        backgroundColor = color?.cgColor
        return self
    }

    @discardableResult
    func setAlpha(_ alpha: CGFloat) -> Self {
        self.opacity = Float(alpha)
        return self
    }
}
