//
//  UICollectionView+Extensions.swift
//  BaseProject
//
//  Created by tran.ba.thiet on 3/23/18.
//  Copyright © 2018 tran.ba.thiet. All rights reserved.
//

import Foundation
import UIKit

extension UICollectionView {
    
    func registerNibCell<T: UICollectionViewCell>(type: T.Type) {
        register(UINib.nib(fromClass: type), forCellWithReuseIdentifier: String(describing: type))
    }
    
    func dequeueReusableNibCell<T: UICollectionViewCell>(type: T.Type, atIndex: IndexPath) -> T? {
        return dequeueReusableCell(withReuseIdentifier: String(describing: type), for: atIndex) as? T
    }
    
}
