//
//  Color.swift
//  RCtest-BunJangApp
//
//  Created by 077tech on 2022/07/17.
//

import Foundation
import UIKit


extension UIColor {
    convenience init(hex: UInt, alpha: CGFloat = 1.0) {
        self.init(
            red:  CGFloat((hex & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((hex & 0x00FF00) >> 8) / 255.0,
            blue:  CGFloat(hex & 0x0000FF) / 255.0,
            alpha:  CGFloat(alpha)
            )
        }
    class var kakaoYellow: UIColor {UIColor(hex: 0xF7E600) }
}

