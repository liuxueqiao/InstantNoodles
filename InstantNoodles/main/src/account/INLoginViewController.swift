//
//  INLoginViewController.swift
//  InstantNoodles
//
//  Created by apple on 2020/8/5.
//  Copyright © 2020 qiao. All rights reserved.
//

import UIKit

class INLoginViewController: INBaseViewController {
    
    var loginButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func bindViewModel() {
        let viewModel = INLoginViewModel.init()
        
    }
    
    override func dealActions() {
        let loginSignal = self.loginButton.reactive.controlEvents(.touchUpInside)
        loginSignal.observeValues { (button) in
            print("-------")
        }
    }
    
//    func onLogin() {
//        NotificationCenter.default.post(name: INNotification.loginSuccess.name(), object: nil)
//    }
    
    override func setupUI() -> Void {
        let name = UILabel.init(frame: CGRect.init(x: 20, y: 100, width: 50, height: 40))
        name.text = "账号"
        name.textColor = .mBlackColor
        name.font = UIFont.font(size: 14.0)
        self.view.addSubview(name)
        
        let nameInput = UITextField.init(frame: CGRect.init(x: name.right+15, y: name.top, width: kScreenWidth-name.right-35, height: name.height))
        nameInput.placeholder = "点击输入账号"
        nameInput.textColor = .mBlackColor
        nameInput.font = UIFont.font(size: 16.0)
        nameInput.text = "lxq"
        nameInput.rightViewMode = .whileEditing
        nameInput.addBorder(color: .themeColor)
        self.view.addSubview(nameInput)
        
        let password = UILabel.init(frame: CGRect.init(x: 20, y: name.bottom+20, width: 50, height: 40))
        password.text = "密码"
        password.textColor = .mBlackColor
        password.font = UIFont.font(size: 14.0)
        self.view.addSubview(password)
        
        let passwordInput = UITextField.init(frame: CGRect.init(x: password.right+15, y: password.top, width: kScreenWidth-password.right-35, height: password.height))
        passwordInput.placeholder = "点击输入密码"
        passwordInput.textColor = .mBlackColor
        passwordInput.font = UIFont.font(size: 16.0)
        passwordInput.text = "111111"
        passwordInput.isSecureTextEntry = true
        passwordInput.rightViewMode = .whileEditing
        passwordInput.addBorder(color: .themeColor)
        self.view.addSubview(passwordInput)
        
        let login = UIButton.init(frame: CGRect.init(x: 35, y: password.bottom+50, width: kScreenWidth-70, height: 40))
        login.setBackgroundImage(UIImage.color(.themeColor), for: .normal)
        login.setBackgroundImage(UIImage.color(.spaceColor), for: .disabled)
        login.setTitle("登录", for: .normal)
        login.setTitleColor(.white, for: .normal)
        login.titleLabel?.font = UIFont.font(size: 16.0)
        login.layer.cornerRadius = 4.0
        login.layer.masksToBounds = true
        self.view.addSubview(login)
        self.loginButton = login
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
