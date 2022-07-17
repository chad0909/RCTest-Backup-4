//
//  RegisterViewController.swift
//  RCtest-BunJangApp
//
//  Created by 077tech on 2022/07/17.
//

import UIKit

class RegisterViewController: UIViewController {

    @IBOutlet weak var registerView: UIView!
    @IBOutlet weak var registerButton: UIButton!
    @IBOutlet weak var safeButton: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.tabBarController?.tabBar.isHidden = true
        
        UIUpdate()
    }
    

    
    
    func UIUpdate(){
        //모서리 굴곡률
        safeButton.layer.cornerRadius = 10
        //테두리 굵기
        safeButton.layer.borderWidth = 0.8
        //테두리 색상
        safeButton.layer.borderColor = UIColor.gray.cgColor
        
        //모서리 굴곡률
        registerButton.layer.cornerRadius = 10
        //테두리 굵기
        registerButton.layer.borderWidth = 0.8
        //테두리 색상
        registerButton.layer.borderColor = UIColor.red.cgColor
        registerButton.semanticContentAttribute = .forceRightToLeft
        
        //테두리 굵기
        registerView.layer.borderWidth = 0.4
        //테두리 색상
        registerView.layer.borderColor = UIColor.lightGray.cgColor
        
    }
}
