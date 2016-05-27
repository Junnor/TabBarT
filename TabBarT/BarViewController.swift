//
//  BarViewController.swift
//  TabBarT
//
//  Created by InReading on 16/5/25.
//  Copyright © 2016年 InReading. All rights reserved.
//

import UIKit

class BarViewController: UITabBarController {
    
    
    private let redColor = UIColor.redColor()
    private let blackColor = UIColor.blackColor()

    private enum TabBarItemCategory {
        case InReading
        case Recommend
        case Social
        case ReadingUser
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 1
        let inreadingItem = tabBar.items![0]
        inreadingItem.title = "Love"
        inreadingItem.image = UIImage(named: "InReading_Unselected")
        let readingselectedImageName = "InReading_Selected"
        var selectedOriginalImage = UIImage(named: readingselectedImageName)
        if selectedOriginalImage != nil {
            selectedOriginalImage = selectedOriginalImage!.imageWithRenderingMode(.AlwaysOriginal)
        }
        inreadingItem.selectedImage = selectedOriginalImage
        let color = BarViewController.barItemTextColor(.InReading)
        inreadingItem.setTitleTextAttributes([NSForegroundColorAttributeName: color], forState: .Selected)
        
        // 1
        let social = tabBar.items![1]
        social.title = "Love"
        social.image = UIImage(named: "Social_Unselected")
        let socialselectedImageName = "Social_Selected"
        var sselectedOriginalImage = UIImage(named: socialselectedImageName)
        if sselectedOriginalImage != nil {
            sselectedOriginalImage = sselectedOriginalImage!.imageWithRenderingMode(.AlwaysOriginal)
        }
        social.selectedImage = sselectedOriginalImage
        let scolor = BarViewController.barItemTextColor(.Social)
        social.setTitleTextAttributes([NSForegroundColorAttributeName: scolor], forState: .Selected)

        
    }

    private class func barItemTextColor(itemType: TabBarItemCategory) -> UIColor {
        switch itemType {
        case .InReading:
            return UIColor(red: 255 / 255.0, green: 149 / 255.0, blue: 93 / 255.0, alpha: 1.0)
        default:
            return UIColor(red: 50 / 255.0, green: 50 / 255.0, blue: 50 / 255.0, alpha: 1.0)
        }
    }


}
