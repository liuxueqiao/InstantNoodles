//
//  INTabViewController.swift
//  InstantNoodles
//
//  Created by apple on 2020/8/3.
//  Copyright © 2020 qiao. All rights reserved.
//

import UIKit

class INTabViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let homeNav = UINavigationController.init(rootViewController: INHomeViewController.init())
        let meNav = UINavigationController.init(rootViewController: INMeViewController.init())
        self.viewControllers = [homeNav, meNav]
        
        let titles: Array<String> = ["首页", "我的"]
        let images = ["main_home", "main_my"]
        let images_selected = ["main_home1", "main_my1"]
        
        let items = self.tabBar.items
        for (index, element) in items!.enumerated() {
            element.title = titles[index]
            element.image = UIImage.init(named: images[index])
            element.selectedImage = UIImage.init(named: images_selected[index])
        }
        
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
