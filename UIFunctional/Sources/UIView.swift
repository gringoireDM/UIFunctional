//
//  UIView.swift
//  UIFunctional
//
//  Created by Giuseppe Lanza on 14/05/2019.
//  Copyright © 2019 MERLin Tech. All rights reserved.
//

import UIKit

public extension UIView {
    @discardableResult
    func setTranslatesAutoresizingMaskIntoConstraints(_ translate: Bool) -> Self {
        translatesAutoresizingMaskIntoConstraints = translate
        return self
    }
    
    @discardableResult
    func addToSuperView(_ superView: UIView) -> Self {
        superView.addSubview(self)
        return self
    }
    
    @discardableResult
    func add(subView: UIView) -> Self {
        addSubview(subView)
        return self
    }
    
    @discardableResult
    func afterRemovingFromSuperView() -> Self {
        removeFromSuperview()
        return self
    }
    
    @discardableResult
    func setLayerBorder(cornerRadius: CGFloat, borderWidth: CGFloat, borderColor: UIColor?) -> Self {
        layer.setCorner(cornerRadius)
            .setBorder(width: borderWidth)
            .setBorder(color: borderColor)
            .setMasksToBounds(true)
        
        return self
    }
    
    @discardableResult @available(iOS 11.0, *)
    func setLayerMaskedCorners(_ maskedCorners: CACornerMask) -> Self {
        layer.maskedCorners = maskedCorners
        return self
    }
    
    @discardableResult
    func setAlpha(_ alpha: CGFloat) -> Self {
        self.alpha = alpha
        return self
    }
    
    @discardableResult
    func setUserInteraction(enabled: Bool) -> Self {
        isUserInteractionEnabled = enabled
        return self
    }
    
    @discardableResult
    func setHidden(_ hidden: Bool) -> Self {
        isHidden = hidden
        return self
    }
    
    @discardableResult
    func setBackgroundColor(_ color: UIColor?) -> Self {
        backgroundColor = color
        return self
    }
    
    @discardableResult
    func setTintColor(_ color: UIColor!) -> Self {
        tintColor = color
        return self
    }
    
    @discardableResult
    func setFrame(_ frame: CGRect) -> Self {
        self.frame = frame
        return self
    }
    
    @discardableResult
    func setBounds(_ bounds: CGRect) -> Self {
        self.bounds = bounds
        return self
    }
    
    @discardableResult
    func setCenter(_ center: CGPoint) -> Self {
        self.center = center
        return self
    }
    
    @discardableResult
    func setTransform(_ affineTransform: CGAffineTransform) -> Self {
        transform = affineTransform
        return self
    }
    
    @discardableResult
    func setTransform3D(_ transform3D: CATransform3D) -> Self {
        layer.transform = transform3D
        return self
    }
    
    // MARK: Shadows
    
    @discardableResult
    func setLayerShadow(color: UIColor?) -> Self {
        layer.shadowColor = color?.cgColor
        return self
    }
    
    @discardableResult
    func setLayerShadow(radius: CGFloat) -> Self {
        layer.shadowRadius = radius
        return self
    }
    
    @discardableResult
    func setLayerShadow(offset: CGSize) -> Self {
        layer.shadowOffset = offset
        return self
    }
    
    @discardableResult
    func setLayerShadow(path: CGPath?) -> Self {
        layer.shadowPath = path
        return self
    }
    
    @discardableResult
    func setLayerShadow(opacity: CGFloat) -> Self {
        layer.shadowOpacity = Float(opacity)
        return self
    }
}
