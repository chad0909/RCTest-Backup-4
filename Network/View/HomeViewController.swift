//
//  HomeViewController.swift
//  RCtest-BunJangApp
//
//  Created by 077tech on 2022/07/17.
//

import UIKit

class HomeViewController: UIViewController {

//All
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var navView: UIView!
    
// AdBanner
    @IBOutlet weak var adCollectionView: UICollectionView!
    @IBOutlet weak var allMenuButton: UIImageView!
    @IBOutlet weak var searchButton: UIImageView!
    @IBOutlet weak var alarmButton: UIImageView!
    var nowPage: Int = 0
    let dataArray: Array<UIImage> = [UIImage(named: "backgroundSample")!, UIImage(named: "backgroundSample2")!, UIImage(named: "backgroundSample3")!]
    
    
// CategoryCollectionView
    @IBOutlet weak var CategoryCollectionView: UICollectionView!
    let categoryDataArray: Array<UIImage> = [
        UIImage(named: "myLikeButton")!,
        UIImage(named: "Adidas")!,
        UIImage(named: "myRecentViewButton")!,
        UIImage(named: "Sneakers")!,
        UIImage(named: "myFeedButton")!,
        UIImage(named: "Tent")!,
        UIImage(named: "myPhoneButton")!,
        UIImage(named: "Bicycle")!,
        UIImage(named: "myLocationButton")!,
        UIImage(named: "StarGoods")!,
        UIImage(named: "friendButton")!,
        UIImage(named: "Scooter")!,
        UIImage(named: "Allmenu")!,
        UIImage(named: "Watch")!,
    ]
    
    let categoryString : Array<String> = [
    "찜",
    "아디다스",
    "최근본상품",
    "스니커즈",
    "내피드",
    "캠핑",
    "내폰시세",
    "자전거",
    "우리동네",
    "스타굿즈",
    "친구초대",
    "오토바이",
    "전체메뉴",
    "시계"
    ]
    
// Label
    @IBOutlet weak var RecommendLabel: UILabel!
    var name : String = "비회원"
    
//CategoryCollectionView
    let sectionInsets = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
    
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        scrollView.delegate = self
        
        adCollectionView.dataSource = self
        adCollectionView.delegate = self
        bannerTimer()
        
        registerXib()
        CategoryCollectionView.delegate = self
        CategoryCollectionView.dataSource = self
        
        RecommendLabel.text = "\(name)님 위한 추천 상품 보고 가세요👀 👇"
    }
// 카테고리 컬렉션뷰 Xib
    private func registerXib() {
        let nibName = UINib(nibName: "HomeCategoryCollectionViewCell", bundle: nil)
        CategoryCollectionView.register(nibName, forCellWithReuseIdentifier: "HomeCategoryCell")
    }
// 배너 타이머
    func bannerTimer() {
        let _: Timer = Timer.scheduledTimer(withTimeInterval: 2, repeats: true) { (Timer) in
            self.bannerMove()
        }
    }
    func bannerMove() {
        if nowPage == dataArray.count-1 {
            adCollectionView.scrollToItem(at: NSIndexPath(item: 0, section: 0) as IndexPath, at: .right, animated: true)
            nowPage = 0
            return
        }
        nowPage += 1
        adCollectionView.scrollToItem(at: NSIndexPath(item: nowPage, section: 0) as IndexPath, at: .right, animated: true)
    }
    

}
class HomeAdCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var HomeadImage: UIImageView!
}


   


extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource,
UICollectionViewDelegateFlowLayout {
//컬렉션뷰 개수 설정
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == adCollectionView{
            return dataArray.count
        }else{
            return categoryDataArray.count
        }
    }
    
//컬렉션뷰 셀 설정
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == adCollectionView{
            let cell = adCollectionView.dequeueReusableCell(withReuseIdentifier: "HomeAdCollectionViewCell", for: indexPath) as! HomeAdCollectionViewCell
            cell.HomeadImage.image = dataArray[indexPath.row]
            return cell
        }else{
            let cell = CategoryCollectionView.dequeueReusableCell(withReuseIdentifier: "HomeCategoryCell", for: indexPath) as! HomeCategoryCollectionViewCell
            cell.categoryImgView.image = categoryDataArray[indexPath.row]
            cell.categoryName.text = categoryString[indexPath.row]
            return cell
        }
    }
    

//컬렉션뷰 사이즈 설정
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == adCollectionView{
            return CGSize(width: adCollectionView.frame.size.width  , height:  adCollectionView.frame.height)
        }else{
//              let width = collectionView.frame.width
//              let height = collectionView.frame.height
//              let itemsPerRow: CGFloat = 7
//              let widthPadding = sectionInsets.left * (itemsPerRow + 1)
//              let itemsPerColumn: CGFloat = 2
//              let heightPadding = sectionInsets.top * (itemsPerColumn + 1)
//              let cellWidth = (width - widthPadding) / itemsPerRow
//              let cellHeight = (height - heightPadding) / itemsPerColumn
              

            return CGSize(width: 80, height: 80)
        }
    }
    
//컬렉션뷰 감속 끝났을 때 현재 페이지 체크
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        nowPage = Int(scrollView.contentOffset.x) / Int(scrollView.frame.width)
    }
    
}




extension HomeViewController : UIScrollViewDelegate{
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
            if(scrollView.contentOffset.y < 10) {
                navView.alpha = 0
                allMenuButton.tintColor = UIColor.white
                searchButton.tintColor = UIColor.white
                alarmButton.tintColor = UIColor.white
            }else if(scrollView.contentOffset.y < 20) {
                print(scrollView.contentOffset.y)
                navView.alpha = 0.1
                allMenuButton.tintColor = UIColor.white
                searchButton.tintColor = UIColor.white
                alarmButton.tintColor = UIColor.white
            }else if(scrollView.contentOffset.y < 30) {
                print(scrollView.contentOffset.y)
                navView.alpha = 0.2
                allMenuButton.tintColor = UIColor.white
                searchButton.tintColor = UIColor.white
                alarmButton.tintColor = UIColor.white
            }else if(scrollView.contentOffset.y < 40) {
                print(scrollView.contentOffset.y)
                navView.alpha = 0.3
                allMenuButton.tintColor = UIColor.white
                searchButton.tintColor = UIColor.white
                alarmButton.tintColor = UIColor.white
            }else if(scrollView.contentOffset.y < 50) {
                print(scrollView.contentOffset.y)
                navView.alpha = 0.4
                allMenuButton.tintColor = UIColor.white
                searchButton.tintColor = UIColor.white
                alarmButton.tintColor = UIColor.white
            }else if(scrollView.contentOffset.y < 60) {
                print(scrollView.contentOffset.y)
                navView.alpha = 0.5
                allMenuButton.tintColor = UIColor.white
                searchButton.tintColor = UIColor.white
                alarmButton.tintColor = UIColor.white
            }else if(scrollView.contentOffset.y < 70) {
                print(scrollView.contentOffset.y)
                navView.alpha = 0.6
                allMenuButton.tintColor = UIColor.black
                searchButton.tintColor = UIColor.black
                alarmButton.tintColor = UIColor.black
            }else if(scrollView.contentOffset.y < 80) {
                print(scrollView.contentOffset.y)
                navView.alpha = 0.7
                allMenuButton.tintColor = UIColor.black
                searchButton.tintColor = UIColor.black
                alarmButton.tintColor = UIColor.black
            }else if(scrollView.contentOffset.y < 90) {
                print(scrollView.contentOffset.y)
                navView.alpha = 0.8
                allMenuButton.tintColor = UIColor.black
                searchButton.tintColor = UIColor.black
                alarmButton.tintColor = UIColor.black
            }else if(scrollView.contentOffset.y < 100) {
                print(scrollView.contentOffset.y)
                navView.alpha = 0.9
                allMenuButton.tintColor = UIColor.black
                searchButton.tintColor = UIColor.black
                alarmButton.tintColor = UIColor.black
            }else if(scrollView.contentOffset.y < 110) {
                print(scrollView.contentOffset.y)
                navView.alpha = 1
                allMenuButton.tintColor = UIColor.black
                searchButton.tintColor = UIColor.black
                alarmButton.tintColor = UIColor.black
            }
        }
}
