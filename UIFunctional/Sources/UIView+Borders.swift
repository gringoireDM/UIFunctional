//
//  UIView+Borders.swift
//  UIFunctional
//
//  Created by Giuseppe Lanza on 14/05/2019.
//  Copyright © 2019 MERLin Tech. All rights reserved.
//

private var viewForBorderHandle: UInt8 = 0
private var thicknessConstraintForBorderHandle: UInt8 = 0

public extension UIView {
    private var viewForBorder: [Border: UIView] {
        get {
            return objc_getAssociatedObject(self, &viewForBorderHandle) as? [Border: UIView] ?? [Border: UIView]()
        }
        set {
            objc_setAssociatedObject(self, &viewForBorderHandle, newValue, objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }
    
    private var thicknessConstraintForBorder: [Border: NSLayoutConstraint] {
        get {
            return objc_getAssociatedObject(self, &thicknessConstraintForBorderHandle) as? [Border: NSLayoutConstraint] ?? [Border: NSLayoutConstraint]()
        }
        set {
            objc_setAssociatedObject(self, &thicknessConstraintForBorderHandle, newValue, objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }
    
    enum Border: Int, CaseIterable {
        case top, right, bottom, left
    }
    
    @discardableResult
    func setBorder(_ border: Border, withColor color: UIColor, andThickness thickness: CGFloat) -> Self {
        let borderView = viewForBorder[border, default: UIView()]
        
        borderView.backgroundColor = color
        borderView.translatesAutoresizingMaskIntoConstraints = false
        
        guard borderView.superview != self else {
            thicknessConstraintForBorder[border]?.constant = thickness
            return self
        }
        
        addSubview(borderView)
        
        switch border {
        case .top:
            let thickNessConstraint = borderView.heightAnchor.constraint(equalToConstant: thickness)
            NSLayoutConstraint.activate(
                [borderView.topAnchor.constraint(equalTo: topAnchor),
                 borderView.leftAnchor.constraint(equalTo: leftAnchor),
                 borderView.rightAnchor.constraint(equalTo: rightAnchor),
                 thickNessConstraint]
            )
            thicknessConstraintForBorder[border] = thickNessConstraint
        case .bottom:
            let thickNessConstraint = borderView.heightAnchor.constraint(equalToConstant: thickness)
            NSLayoutConstraint.activate(
                [borderView.bottomAnchor.constraint(equalTo: bottomAnchor),
                 borderView.leftAnchor.constraint(equalTo: leftAnchor),
                 borderView.rightAnchor.constraint(equalTo: rightAnchor),
                 thickNessConstraint]
            )
            thicknessConstraintForBorder[border] = thickNessConstraint
        case .left:
            let thickNessConstraint = borderView.widthAnchor.constraint(equalToConstant: thickness)
            NSLayoutConstraint.activate(
                [borderView.topAnchor.constraint(equalTo: topAnchor),
                 borderView.bottomAnchor.constraint(equalTo: bottomAnchor),
                 borderView.leftAnchor.constraint(equalTo: leftAnchor),
                 thickNessConstraint]
            )
            thicknessConstraintForBorder[border] = thickNessConstraint
        case .right:
            let thickNessConstraint = borderView.widthAnchor.constraint(equalToConstant: thickness)
            NSLayoutConstraint.activate(
                [borderView.topAnchor.constraint(equalTo: topAnchor),
                 borderView.bottomAnchor.constraint(equalTo: bottomAnchor),
                 borderView.rightAnchor.constraint(equalTo: rightAnchor),
                 thickNessConstraint]
            )
            thicknessConstraintForBorder[border] = thickNessConstraint
        }
        
        viewForBorder[border] = borderView
        
        return self
    }
    
    @discardableResult
    func setBorders(_ borders: [Border] = Border.allCases, withColor color: UIColor, andThickness thickness: CGFloat) -> Self {
        borders.forEach {
            setBorder($0, withColor: color, andThickness: thickness)
        }
        return self
    }
    
    @discardableResult
    func setVisibleBordersColor(_ color: UIColor) -> Self {
        viewForBorder.values.forEach {
            $0.backgroundColor = color
        }
        return self
    }
    
    @discardableResult
    func setVisibleBordersThickness(_ thickness: CGFloat) -> Self {
        viewForBorder.keys.forEach {
            thicknessConstraintForBorder[$0]?.constant = thickness
        }
        return self
    }
    
    @discardableResult
    func hideBorder(_ border: Border) -> Self {
        viewForBorder[border]?.alpha = 0
        return self
    }
    
    @discardableResult
    func hideBorders(_ borders: [Border] = Border.allCases) -> Self {
        borders.forEach{ hideBorder($0) }
        return self
    }
    
    @discardableResult
    func unhideBorder(_ border: Border) -> Self {
        viewForBorder[border]?.alpha = 1
        return self
    }
    
    @discardableResult
    func unhideBorders(_ borders: [Border] = Border.allCases) -> Self {
        borders.forEach { unhideBorder($0) }
        return self
    }
    
    @discardableResult
    func removeBorder(_ border: Border) -> Self {
        viewForBorder[border]?.removeFromSuperview()
        thicknessConstraintForBorder[border] = nil
        return self
    }
    
    @discardableResult
    func removeBorders(_ borders: [Border] = Border.allCases) -> Self {
        borders.forEach { removeBorder($0) }
        return self
    }
    
    @discardableResult
    func removeAllBorders() -> Self {
        viewForBorder.keys.forEach { removeBorder($0) }
        return self
    }
}
