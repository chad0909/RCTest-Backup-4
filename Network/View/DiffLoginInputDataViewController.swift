//
//  DiffLoginInputDataViewController.swift
//  RCtest-BunJangApp
//
//  Created by 077tech on 2022/07/18.
//

import UIKit

class DiffLoginInputDataViewController: UIViewController {

    let text : Array<String> = ["이름을 입력해주세요", "생년월일을 입력해주세요", "통신사를 입력해주세요", "휴대폰번호를 입력해주세요", "입력한 정보를 확인해주세요"]
    
    @IBOutlet weak var requestLabel: UILabel!
    @IBOutlet weak var OKButton: UIButton!
    
    @IBOutlet weak var tpNumberTextField: UITextField!
    
    @IBOutlet weak var broadcastLabel: UILabel!
    @IBOutlet weak var birthdayTextField: UITextField!
    
    @IBOutlet weak var genderTextField: UITextField!
    
    @IBOutlet weak var nameTextField: UITextField!
    
    
    @IBAction func tapGoHome(_ sender: Any) {
        dismiss(animated: true)
    }
    @IBAction func tapConfirm(_ sender: Any) {
        // 각각의 텍스트 필드에 담겨 있던 값을 저장
               guard let nameText = nameTextField.text,
                     let tpNumber = tpNumberTextField.text else {
                   return
               }

        print(nameText)
        print(tpNumber)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UIUpdate()

        
    }
    

    func UIUpdate(){
        OKButton.layer.cornerRadius = 10
        OKButton.layer.borderWidth = 0.8
        OKButton.layer.borderColor = UIColor.red.cgColor
        
        tpNumberTextField.borderStyle = .none
        tpNumberTextField.setPlaceholderColor(.systemGray)
        
        birthdayTextField.borderStyle = .none
        birthdayTextField.setPlaceholderColor(.systemGray)
        
        genderTextField.borderStyle = .none
        genderTextField.setPlaceholderColor(.systemGray)
        
        nameTextField.borderStyle = .none
        nameTextField.setPlaceholderColor(.systemGray)
        
    }

}
