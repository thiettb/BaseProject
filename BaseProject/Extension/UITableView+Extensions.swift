//
//  UITableView+Extensions.swift
//  BaseProject
//
//  Created by tran.ba.thiet on 3/23/18.
//  Copyright © 2018 tran.ba.thiet. All rights reserved.
//

import Foundation
import UIKit

extension UITableView {
    
    func registerNibCell<T: UITableViewCell>(type: T.Type) {
        register(UINib.nib(fromClass: type), forCellReuseIdentifier: String(describing: type))
    }
    
    func registerNibHeaderFooter<T: UITableViewHeaderFooterView>(type: T.Type) {
        register(UINib.nib(fromClass: type), forHeaderFooterViewReuseIdentifier: String(describing: type))
    }
    
    func dequeueReusableNibCell<T: UITableViewCell>(type: T.Type) -> T? {
        return dequeueReusableCell(withIdentifier: String(describing: type)) as? T
    }
    
    func dequeueReusableHeaderFooter<T: UITableViewHeaderFooterView>(type: T.Type) -> T? {
        return dequeueReusableHeaderFooterView(withIdentifier: String(describing: type)) as? T
    }
}
