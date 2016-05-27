//
//  FirstViewController.swift
//  TabBarT
//
//  Created by InReading on 16/5/25.
//  Copyright © 2016年 InReading. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        let bar = tabBarController as! BarViewController
        print("BarVC : \(bar)")
        
    }
    

}
