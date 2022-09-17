//
//  UIColor-Extension.swift
//  IGListKitTest
//
//  Created by Andy on 2022/9/17.
//

import UIKit

extension UIColor {

    static func arc4randomColor() -> UIColor {
        return UIColor(red:CGFloat(arc4random_uniform(255)) / 255.0, green: CGFloat(arc4random_uniform(255)) / 255.0, blue: CGFloat(arc4random_uniform(255)) / 255.0, alpha: 1.0)
    }
    
}
