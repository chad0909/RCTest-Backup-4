//
//  RegisterCollectionViewCell.swift
//  RCtest-BunJangApp
//
//  Created by 077tech on 2022/07/17.
//

import UIKit

class RegisterCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var deleteButton: UIImageView!
    @IBOutlet weak var editButton: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        UIUpadate()
    }
    
    func UIUpadate(){
        
    editButton.layer.cornerRadius = 2
    editButton.layer.borderWidth = 0
    editButton.layer.borderColor = UIColor.lightGray.cgColor
    
    }
}
