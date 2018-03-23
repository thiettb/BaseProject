//
//  UIView+Extensions.swift
//  BaseProject
//
//  Created by tran.ba.thiet on 3/23/18.
//  Copyright © 2018 tran.ba.thiet. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    
    @IBInspectable var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
    }
    
    @IBInspectable var borderWidth: CGFloat {
        get {
            return layer.borderWidth
        }
        set {
            layer.borderWidth = newValue
        }
    }
    
    @IBInspectable var borderColor: UIColor? {
        get {
            return UIColor(cgColor: layer.borderColor!)
        }
        set {
            layer.borderColor = newValue?.cgColor
        }
    }
    
    @discardableResult public func loadViewFromNib() -> UIView? {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: String(describing: type(of: self)), bundle: bundle)
        guard let nibView = nib.instantiate(withOwner: self, options: nil).first as? UIView else {
            return nil
        }
        addSubview(nibView)
        nibView.boundsToSuperView()
        return nibView
    }
    
    public func boundsToSuperView() {
        if let superView = self.superview {
            frame = superView.bounds
            autoresizingMask = [.flexibleWidth, .flexibleHeight]
            translatesAutoresizingMaskIntoConstraints = true
        }
    }
    
}
