//
//  ViewController.swift
//  InstantNoodles
//
//  Created by apple on 2020/7/31.
//  Copyright © 2020 qiao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let arr = [1,2,3,4,5]
        printDebug("-------\(arr[2])")
//        printDebug("-------\(arr[9])")
        
    }

    func printDebug<T>(_ message: T,file: NSString = #file,method: String = #function,line: Int = #line){
        #if DEBUG
        let prefix = "\(file.lastPathComponent)_\(line)_\(method):"
        print(prefix, message)
        #endif
    }

}

