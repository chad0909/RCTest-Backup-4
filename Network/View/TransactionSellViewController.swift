//
//  TransactionSellViewController.swift
//  RCtest-BunJangApp
//
//  Created by 077tech on 2022/07/20.
//

import UIKit

class TransactionSellViewController: UIViewController {

    @IBOutlet weak var AllButton: UIButton!
    @IBOutlet weak var ContinueButton: UIButton!
    @IBOutlet weak var FinishedButton: UIButton!
    @IBOutlet weak var CancelButton: UIButton!
    
    @IBAction func AllButtonClick(_ sender: Any) {
        AllButton.setTitleColor(UIColor.white, for: .normal)
        AllButton.backgroundColor = UIColor.red
        AllButton.layer.borderColor = UIColor.red.cgColor
        
        ContinueButton.setTitleColor(UIColor.darkGray, for: .normal)
        ContinueButton.backgroundColor = UIColor.systemGray5
        ContinueButton.layer.borderColor = UIColor.systemGray5.cgColor
        
        FinishedButton.setTitleColor(UIColor.darkGray, for: .normal)
        FinishedButton.backgroundColor = UIColor.systemGray5
        FinishedButton.layer.borderColor = UIColor.systemGray5.cgColor
        
        CancelButton.setTitleColor(UIColor.darkGray, for: .normal)
        CancelButton.backgroundColor = UIColor.systemGray5
        CancelButton.layer.borderColor = UIColor.systemGray5.cgColor
    }
    @IBAction func ContinueButtonClick(_ sender: Any) {
        AllButton.setTitleColor(UIColor.darkGray, for: .normal)
        AllButton.backgroundColor = UIColor.systemGray5
        AllButton.layer.borderColor = UIColor.systemGray5.cgColor
        
        ContinueButton.setTitleColor(UIColor.white, for: .normal)
        ContinueButton.backgroundColor = UIColor.red
        ContinueButton.layer.borderColor = UIColor.red.cgColor
        
        FinishedButton.setTitleColor(UIColor.darkGray, for: .normal)
        FinishedButton.backgroundColor = UIColor.systemGray5
        FinishedButton.layer.borderColor = UIColor.systemGray5.cgColor
        
        CancelButton.setTitleColor(UIColor.darkGray, for: .normal)
        CancelButton.backgroundColor = UIColor.systemGray5
        CancelButton.layer.borderColor = UIColor.systemGray5.cgColor
    }
    @IBAction func FinishedButtonClick(_ sender: Any) {
        AllButton.setTitleColor(UIColor.darkGray, for: .normal)
        AllButton.backgroundColor = UIColor.systemGray5
        AllButton.layer.borderColor = UIColor.systemGray5.cgColor
        
        ContinueButton.setTitleColor(UIColor.darkGray, for: .normal)
        ContinueButton.backgroundColor = UIColor.systemGray5
        ContinueButton.layer.borderColor = UIColor.systemGray5.cgColor
        
        FinishedButton.setTitleColor(UIColor.white, for: .normal)
        FinishedButton.backgroundColor = UIColor.red
        FinishedButton.layer.borderColor = UIColor.red.cgColor
        
        CancelButton.setTitleColor(UIColor.darkGray, for: .normal)
        CancelButton.backgroundColor = UIColor.systemGray5
        CancelButton.layer.borderColor = UIColor.systemGray5.cgColor
    }
    @IBAction func CancelButtonClick(_ sender: Any) {
        AllButton.setTitleColor(UIColor.darkGray, for: .normal)
        AllButton.backgroundColor = UIColor.systemGray5
        AllButton.layer.borderColor = UIColor.systemGray5.cgColor
        
        ContinueButton.setTitleColor(UIColor.darkGray, for: .normal)
        ContinueButton.backgroundColor = UIColor.systemGray5
        ContinueButton.layer.borderColor = UIColor.systemGray5.cgColor
        
        FinishedButton.setTitleColor(UIColor.darkGray, for: .normal)
        FinishedButton.backgroundColor = UIColor.systemGray5
        FinishedButton.layer.borderColor = UIColor.systemGray5.cgColor
        
        CancelButton.setTitleColor(UIColor.white, for: .normal)
        CancelButton.backgroundColor = UIColor.red
        CancelButton.layer.borderColor = UIColor.red.cgColor
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        UIUpdate()
    }
    

    func UIUpdate(){
        AllButton.layer.cornerRadius = 10
        AllButton.layer.borderWidth = 0.8
        AllButton.layer.borderColor = UIColor.red.cgColor
        
        ContinueButton.layer.cornerRadius = 10
        ContinueButton.layer.borderWidth = 0.8
        ContinueButton.layer.borderColor = UIColor.systemGray5.cgColor
        
        FinishedButton.layer.cornerRadius = 10
        FinishedButton.layer.borderWidth = 0.8
        FinishedButton.layer.borderColor = UIColor.systemGray5.cgColor
        
        CancelButton.layer.cornerRadius = 10
        CancelButton.layer.borderWidth = 0.8
        CancelButton.layer.borderColor = UIColor.systemGray5.cgColor
    }

}
