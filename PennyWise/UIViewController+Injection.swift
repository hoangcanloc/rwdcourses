//
//  UIViewController+Injection.swift
//  PennyWise
//
//  Created by Nguyen Dinh Hoang on 10/20/20.
//  Copyright © 2020 Caroline. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    @objc
    func injected() {
        for view in self.view.subviews {
            view.removeFromSuperview()
        }
        self.viewDidLoad()
    }
}
