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
    @objc func injected() {
        for view in view.subviews {
            UIView.getAllSubviews(from: view).forEach { $0.setNeedsDisplay() }
        }
        viewDidLoad()
        viewWillAppear(true)
    }
}

extension UIView {
    class func getAllSubviews<T: UIView>(from parenView: UIView) -> [T] {
            return parenView.subviews.flatMap { subView -> [T] in
                var result = getAllSubviews(from: subView) as [T]
                if let view = subView as? T { result.append(view) }
                return result
            }
        }

}
