//
//  ViewBorder.swift
//  InstantNoodles
//
//  Created by apple on 2020/8/6.
//  Copyright © 2020 qiao. All rights reserved.
//

import UIKit

enum INBorderDirection {
    case left, right, top, bottom
}

extension UIView {
    
    /// 添加某个方向的描边
    /// - Parameters:
    ///   - color: 描边颜色，默认lineColor
    ///   - width: 描边线粗，默认1.0
    ///   - direction: 描边方向，默认底边
    func addBorder(color: UIColor = .lineColor, width: CGFloat = 1.0 , direction: INBorderDirection = .bottom) {
        let layer: CALayer = CALayer.init()
        layer.backgroundColor = color.cgColor
        
        switch direction {
        case .left:
            layer.frame = CGRect.init(x: 0, y: 0, width: width, height: self.bounds.size.height)
        case .right:
            layer.frame = CGRect.init(x: self.bounds.size.width - width, y: 0, width: width, height: self.bounds.size.height)
        case .top:
            layer.frame = CGRect.init(x: 0, y: 0, width: self.bounds.size.width, height: width)
        case .bottom:
            layer.frame = CGRect.init(x: 0, y: self.bounds.size.height - width, width: self.bounds.size.width, height: width)
        }
        
        self.layer.addSublayer(layer)
    }
}
