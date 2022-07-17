//
//  TabbarViewController.swift
//  RCtest-BunJangApp
//
//  Created by 077tech on 2022/07/17.
//

import UIKit

class TabbarViewController: UITabBarController {

    @IBOutlet weak var UITabBarCustom: UITabBar!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        UITabBar.appearance().unselectedItemTintColor = UIColor.lightGray
        UITabBar.appearance().tintColor = UIColor.black
        
        
        
    }
    
    

}
