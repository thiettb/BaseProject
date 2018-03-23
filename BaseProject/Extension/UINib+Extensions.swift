//
//  UINib+Extensions.swift
//  BaseProject
//
//  Created by tran.ba.thiet on 3/23/18.
//  Copyright © 2018 tran.ba.thiet. All rights reserved.
//

import Foundation
import UIKit

extension UINib {
    
    static func nib<T: NSObject>(fromClass type: T.Type) -> UINib? {
        let name = String(describing: type)
        if Bundle.main.path(forResource: name, ofType: "nib") != nil ||
            Bundle.main.path(forResource: name, ofType: "xib") != nil {
            return UINib(nibName: String(describing: T.self), bundle: nil)
        }
        return nil
    }
    
}
