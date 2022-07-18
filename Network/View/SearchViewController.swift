//
//  SearchViewController.swift
//  RCtest-BunJangApp
//
//  Created by 077tech on 2022/07/17.
//

import UIKit


class SearchViewController: UIViewController {
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var scrollViewView: UIView!
    @IBOutlet weak var topSearchView: UIView!
    @IBOutlet weak var recentSearchView: UIView!
    @IBOutlet weak var recentSearchCollectionView: UICollectionView!
    @IBOutlet weak var manySearchCollectionView: UICollectionView!
    @IBOutlet weak var manySearchView: UIView!
    @IBOutlet weak var adBannerImg: UIImageView!
    @IBOutlet weak var recommendBrandTableView: UITableView!
    @IBOutlet weak var seeAllBrandButton: UIButton!
    @IBOutlet weak var famousCategoryCollectionView: UICollectionView!
    
    var recentSearchArray : Array<String> = ["123"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.tabBarController?.tabBar.isHidden = true
        
        UIUpdate()
        hideRecentSearch()
    }
    
    func UIUpdate(){
        adBannerImg.layer.cornerRadius = 8
        adBannerImg.layer.borderWidth = 0.2
        adBannerImg.layer.borderColor = UIColor.black.cgColor
    }

//최근 검색 뷰 사라지게하기. (view 자체를 없애고 밑에를 끌어올리는 법은 아직 구현 못함)
    func hideRecentSearch(){
        if recentSearchArray.count == 0{
            recentSearchView.isHidden = true
    }
    
    
    
    }
    
}
