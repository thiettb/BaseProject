//
//  UIViewController+Extension.swift
//  BaseProject
//
//  Created by tran.ba.thiet on 3/23/18.
//  Copyright © 2018 tran.ba.thiet. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    class func loadFromStoryBoard(_ storyboard: UIStoryboard) -> UIViewController {
        return storyboard.instantiateViewController(withIdentifier: String(describing: self))
    }
}
