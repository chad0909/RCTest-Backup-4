//
//  DifferentLoginViewController.swift
//  RCtest-BunJangApp
//
//  Created by 077tech on 2022/07/17.
//

import UIKit

class DifferentLoginViewController: UIViewController {

    @IBOutlet weak var popupView: UIView!
    @IBOutlet weak var background: UIView!
    //코드로 연결함
    @IBAction func backgroundTap(_ sender: UITapGestureRecognizer){
      self.dismiss(animated: true,
      completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        popupView.clipsToBounds = true
        popupView.layer.cornerRadius = 15
        popupView.layer.maskedCorners = CACornerMask(arrayLiteral: .layerMinXMinYCorner, .layerMaxXMinYCorner)
        
        backgroundDismiss()
//        backgroundTint()

        
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        self.background.alpha = 0.25
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        self.background.alpha = 0
    }
    
    
    func backgroundDismiss(){
        background.addGestureRecognizer(UITapGestureRecognizer(target: self, action:#selector(self.backgroundTap(_:))))
    }

    func backgroundTint(){
        
    }

    


}





