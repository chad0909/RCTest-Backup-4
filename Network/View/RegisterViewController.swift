//
//  RegisterViewController.swift
//  RCtest-BunJangApp
//
//  Created by 077tech on 2022/07/17.
//

import UIKit

class RegisterViewController: UIViewController {

    @IBOutlet weak var topCollectionView: UICollectionView!
    @IBOutlet weak var productTextField: UITextField!
    @IBOutlet weak var categoryTextField: UILabel!
    @IBOutlet weak var tagTextField: UILabel!
    @IBOutlet weak var optionButton: UIButton!
    
    @IBOutlet weak var wonTextField: UITextField!
    @IBOutlet weak var textView: UITextView!
    
    //registerTab
    @IBOutlet weak var registerView: UIView!
    @IBOutlet weak var registerButton: UIButton!
    @IBOutlet weak var safeButton: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.tabBarController?.tabBar.isHidden = true
        
        UIUpdate()
        placeholderSetting()
        registerXib()

        topCollectionView.dataSource = self
        topCollectionView.delegate = self
    }
    

    
    
    func UIUpdate(){
        safeButton.layer.cornerRadius = 10
        safeButton.layer.borderWidth = 0.8
        safeButton.layer.borderColor = UIColor.gray.cgColor
        
        registerButton.layer.cornerRadius = 10
        registerButton.layer.borderWidth = 0.8
        registerButton.layer.borderColor = UIColor.red.cgColor
        registerButton.semanticContentAttribute = .forceRightToLeft
        
        registerView.layer.borderWidth = 0.4
        registerView.layer.borderColor = UIColor.lightGray.cgColor
        
        productTextField.borderStyle = .none
        productTextField.setPlaceholderColor(.systemGray)
        
        wonTextField.borderStyle = .none
        wonTextField.setPlaceholderColor(.systemGray)
        
        optionButton.layer.cornerRadius = 5
        optionButton.layer.borderWidth = 0.4
        optionButton.layer.borderColor = UIColor.lightGray.cgColor
        
    }
    
    
    private func registerXib() {
        let nibName = UINib(nibName: "RegisterCollectionViewCell", bundle: nil)
        topCollectionView.register(nibName, forCellWithReuseIdentifier: "registerCell")
    }
    
}

public extension UITextField {
    
    func setPlaceholderColor(_ placeholderColor: UIColor) {
        attributedPlaceholder = NSAttributedString(
            string: placeholder ?? "",
            attributes: [
                .foregroundColor: placeholderColor,
                .font: font
            ].compactMapValues { $0 }
        )
    }
    
}

extension RegisterViewController : UITextViewDelegate{
    
    func placeholderSetting(){
        textView.delegate = self
        textView.text = "여러 장의 상품사진과 구입 연도, 브랜드, 사용감, 하자 유무등 구매자에게 필요한 정보를 꼭 포함해 주세요. 문의를 줄이고 더 쉽데 판매할 수 있어요. (10자 이상)"
        textView.textColor = UIColor.lightGray
    }
    func textViewDidBeginEditing(_ textView: UITextView){
        if textView.textColor == UIColor.lightGray{
            textView.text = nil
            textView.textColor = UIColor.black
        }
    }
    func textViewDidEndEditing(_ textView: UITextView){
        if textView.text.isEmpty{
            textView.text = "여러 장의 상품사진과 구입 연도, 브랜드, 사용감, 하자 유무등 구매자에게 필요한 정보를 꼭 포함해 주세요. 문의를 줄이고 더 쉽데 판매할 수 있어요. (10자 이상)"
            textView.textColor = UIColor.lightGray
        }
    }
}

extension RegisterViewController : UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 13
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = topCollectionView.dequeueReusableCell(withReuseIdentifier: "registerCell", for: indexPath) as! RegisterCollectionViewCell
        
        return cell
    }
    
   
}
