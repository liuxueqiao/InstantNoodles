//
//  INHomeViewController.swift
//  InstantNoodles
//
//  Created by apple on 2020/8/3.
//  Copyright © 2020 qiao. All rights reserved.
//

import UIKit

class INHomeViewController: INBaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "首页"

        NotificationCenter.default.addObserver(self, selector: #selector(onLoginSuccess), name: INNotificationName.loginSuccess, object: nil)
        
    }
    
    
    @objc func onLoginSuccess() -> Void {
        print("登录成功")
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
