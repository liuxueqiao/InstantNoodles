//
//  ViewPosition.swift
//  InstantNoodles
//
//  Created by apple on 2020/8/6.
//  Copyright © 2020 qiao. All rights reserved.
//

import UIKit

extension UIView {
    
    var left: CGFloat{
        set {
            var frame = self.frame
            frame.origin.x = newValue
            self.frame = frame
        }
        get {
            return self.frame.origin.x
        }
    }
    
    var top: CGFloat{
        set {
            var frame = self.frame
            frame.origin.y = newValue
            self.frame = frame
        }
        get {
            return self.frame.origin.y
        }
    }
    
    var right: CGFloat{
        set {
            var frame = self.frame
            frame.origin.x = newValue - frame.size.width
            self.frame = frame
        }
        get {
            return self.frame.origin.x + self.frame.size.width
        }
    }
    
    var bottom: CGFloat{
        set {
            var frame = self.frame
            frame.origin.y = newValue - frame.size.height
            self.frame = frame
        }
        get {
            return self.frame.origin.y + self.frame.size.height
        }
    }
    
    var centerX: CGFloat{
        set {
            self.center = CGPoint(x:newValue, y:self.center.x)
        }
        
        get {
            return self.center.x
        }
    }
    
    var centerY: CGFloat{
        set {
            self.center = CGPoint(x:self.center.x, y:newValue)
        }
        get {
            return self.center.y
        }
    }
    
    var width: CGFloat{
        set {
            var frame = self.frame
            frame.size.width = newValue
            self.frame = frame
        }
        get {
            return self.frame.size.width
        }
    }
    
    var height: CGFloat{
        set {
            var frame = self.frame
            frame.size.height = newValue
            self.frame = frame
        }
        get {
            return self.frame.size.height
        }
    }
    
}
