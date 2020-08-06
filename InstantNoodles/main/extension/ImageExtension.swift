//
//  ImageExtension.swift
//  InstantNoodles
//
//  Created by apple on 2020/8/6.
//  Copyright © 2020 qiao. All rights reserved.
//

import UIKit

extension UIImage {
    
    /// 颜色生成图片
    /// - Parameter color: 颜色UIColor
    /// - Returns: 单色图片
    class func color(_ color: UIColor)-> UIImage{
        let rect = CGRect.init(x: 0.0, y: 0.0, width: 1.0, height: 1.0)
        UIGraphicsBeginImageContext(rect.size)
        let context = UIGraphicsGetCurrentContext()
        context?.setFillColor(color.cgColor)
        context?.fill(rect)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image!
    }
    
}
