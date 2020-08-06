//
//  INNotificationName.swift
//  InstantNoodles
//
//  Created by apple on 2020/8/5.
//  Copyright © 2020 qiao. All rights reserved.
//

import UIKit

enum INNotification: String {
    case loginSuccess = "login_success"
    
    
    func name() -> Notification.Name {
        return Notification.Name(rawValue: rawValue)
    }
}

//
//
//class INNotificationName: NSObject {
//
//    static public let loginSuccess = Notification.Name(rawValue: "login_success")
//
//}
