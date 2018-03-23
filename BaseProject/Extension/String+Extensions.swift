//
//  String+Extensions.swift
//  BaseProject
//
//  Created by tran.ba.thiet on 3/23/18.
//  Copyright © 2018 tran.ba.thiet. All rights reserved.
//

import Foundation

extension String {
    func isValidEmail() -> Bool {
        let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        return NSPredicate(format:"SELF MATCHES %@", emailRegex).evaluate(with: self)
    }
}
