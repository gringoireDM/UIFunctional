//
//  UILabel.swift
//  UIFunctional
//
//  Created by Giuseppe Lanza on 14/05/2019.
//  Copyright © 2019 MERLin Tech. All rights reserved.
//

import UIKit

public extension UILabel {
    // MARK: Text
    @discardableResult
    func setAttributedText(_ text: NSAttributedString?) -> Self {
        attributedText = text
        return self
    }
    
    @discardableResult
    func setText(_ text: String?) -> Self {
        self.text = text
        return self
    }
    
    // MARK: Text Formatting
    
    @discardableResult
    func setTextColor(_ color: UIColor!) -> Self {
        textColor = color
        return self
    }

    @discardableResult
    func setFont(_ font: UIFont) -> Self {
        self.font = font
        return self
    }
    
    @discardableResult
    func setAlignment(_ alignment: NSTextAlignment) -> Self {
        textAlignment = alignment
        return self
    }
    
    // MARK: Shadows
    
    @discardableResult
    func setTextShadow(color: UIColor?) -> Self {
        shadowColor = color
        return self
    }
    
    @discardableResult
    func setTextShadow(offset: CGSize) -> Self {
        shadowOffset = offset
        return self
    }
}
