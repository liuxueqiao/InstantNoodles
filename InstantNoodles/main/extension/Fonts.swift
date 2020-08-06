//
//  Fonts.swift
//  InstantNoodles
//
//  Created by apple on 2020/8/6.
//  Copyright © 2020 qiao. All rights reserved.
//
/*
 所有项目字体均在此
 字体需要支持可配置大小的话，可在font中去做判断
 */

import UIKit

extension UIFont {
    /// 系统字体，默认字号16，Weight为regular
    class func font(size: CGFloat, weight: UIFont.Weight = .regular) -> UIFont! {
        if #available(iOS 8.2, *) {
            return UIFont.systemFont(ofSize: size, weight: weight)
        } else {
            return UIFont.systemFont(ofSize: size)
        }
    }
}
