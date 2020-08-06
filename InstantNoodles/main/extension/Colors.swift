//
//  Colors.swift
//  InstantNoodles
//
//  Created by apple on 2020/8/6.
//  Copyright © 2020 qiao. All rights reserved.
//

import UIKit

extension UIColor {
    static var themeColor: UIColor {
        UIColor.init(hexString: "#4FA7F9")
    }
    
    static var lineColor: UIColor {
        UIColor.init(hexString: "#F0F0F0")
    }
    static var spaceColor: UIColor {
        UIColor.init(hexString: "#F5F5F5")
    }
    
    static var mRedColor: UIColor {
        UIColor.init(hexString: "#E26161")
    }
    static var mBlueColor: UIColor {
        UIColor.init(hexString: "#5E75AD")
    }
    static var mOrangeColor: UIColor {
        UIColor.init(hexString: "#FF9933")
    }
    static var mBlackColor: UIColor {
        UIColor.init(hexString: "#333333")
    }
    static var mGrayColor: UIColor {
        UIColor.init(hexString: "#666666")
    }
    static var mLightGrayColor: UIColor {
        UIColor.init(hexString: "#999999")
    }
    
    
    // Hex String -> UIColor
    convenience init(hexString: String) {
        let hexString = hexString.trimmingCharacters(in: .whitespacesAndNewlines)
        let scanner = Scanner(string: hexString)
         
        if hexString.hasPrefix("#") {
            scanner.scanLocation = 1
        }
         
        var color: UInt32 = 0
        scanner.scanHexInt32(&color)
         
        let mask = 0x000000FF
        let r = Int(color >> 16) & mask
        let g = Int(color >> 8) & mask
        let b = Int(color) & mask
         
        let red   = CGFloat(r) / 255.0
        let green = CGFloat(g) / 255.0
        let blue  = CGFloat(b) / 255.0
         
        self.init(red: red, green: green, blue: blue, alpha: 1)
    }
     
    // UIColor -> Hex String
    var hexString: String? {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        var alpha: CGFloat = 0
         
        let multiplier = CGFloat(255.999999)
         
        guard self.getRed(&red, green: &green, blue: &blue, alpha: &alpha) else {
            return nil
        }
         
        if alpha == 1.0 {
            return String(
                format: "#%02lX%02lX%02lX",
                Int(red * multiplier),
                Int(green * multiplier),
                Int(blue * multiplier)
            )
        }
        else {
            return String(
                format: "#%02lX%02lX%02lX%02lX",
                Int(red * multiplier),
                Int(green * multiplier),
                Int(blue * multiplier),
                Int(alpha * multiplier)
            )
        }
    }
}
