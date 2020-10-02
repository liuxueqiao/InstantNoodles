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
    var nameInput: UITextField!
    var passwordInput: UITextField!
    
    var viewModel: INLoginViewModel = INLoginViewModel.init()
    var disposedBag = DisposeBag()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func bindViewModel() {
//        self.nameInput.rx.text.orEmpty.bind(to: self.viewModel.nameStr)
//        self.passwordInput.rx.text.orEmpty.bind(to: self.viewModel.passwordStr)
        
    }
    
    override func dealActions() {
        self.loginButton.rx.tap.subscribe { (sender) in
            print("-------")
        }.disposed(by: disposedBag)

        //在主线程中操作，0.3秒内值若多次改变，取最后一次
        self.nameInput.rx.text.orEmpty.subscribe(onNext: { [weak self](text) in
            self?.loginButton.isEnabled = text.count > 0
        }).disposed(by: disposedBag)
        
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
        self.nameInput = nameInput
        
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
        self.passwordInput = passwordInput
        
        let login = UIButton.init(frame: CGRect.init(x: 35, y: password.bottom+50, width: kScreenWidth-70, height: 40))
        login.setBackgroundImage(UIImage.color(.themeColor), for: .normal)
        login.setBackgroundImage(UIImage.color(.spaceColor), for: .disabled)
        login.setTitle("登录", for: .normal)
        login.setTitleColor(.white, for: .normal)
        login.setTitleColor(.mBlackColor, for: .disabled)
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
