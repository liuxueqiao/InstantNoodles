//
//  INBaseViewController.swift
//  InstantNoodles
//
//  Created by apple on 2020/8/3.
//  Copyright © 2020 qiao. All rights reserved.
//

import UIKit
@_exported import RxSwift
@_exported import RxCocoa

class INBaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.bindViewModel()
        self.setupUI()
        self.dealActions()
    }
    
    func setupUI() {
        // Subclass implementation
    }
    
    func bindViewModel() {
       // Subclass implementation
    }
    
    func dealActions() {
       // Subclass implementation
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
