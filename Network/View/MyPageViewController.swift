//
//  MyPageViewController.swift
//  RCtest-BunJangApp
//
//  Created by 077tech on 2022/07/18.
//

import UIKit

class MyPageViewController: UIViewController {

    @IBOutlet weak var storeImg: UIImageView!
    @IBOutlet weak var storeName: UILabel!
    @IBOutlet weak var storeInquiryButton: UIButton!
    @IBOutlet weak var settingArrow: UIImageView!
    
    @IBOutlet weak var adCollectionView: UICollectionView!
    
    var nowPage: Int = 0
    let dataArray: Array<UIImage> = [UIImage(named: "adNum1")!, UIImage(named: "adNum2")!, UIImage(named: "adNum3")!]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        UIUpdate()
        
        adCollectionView.delegate = self
        adCollectionView.dataSource = self
        bannerTimer()
        
    }
    
    func UIUpdate(){
        storeInquiryButton.layer.cornerRadius = 10
        storeInquiryButton.layer.borderWidth = 0.8
        storeInquiryButton.layer.borderColor = UIColor.lightGray.cgColor
        

    }
    
    func bannerTimer() {
        let _: Timer = Timer.scheduledTimer(withTimeInterval: 2, repeats: true) { (Timer) in
            self.bannerMove()
        }
    }
    // 배너 움직이는 매서드
    func bannerMove() {
        // 현재페이지가 마지막 페이지일 경우
        if nowPage == dataArray.count-1 {
        // 맨 처음 페이지로 돌아감
            adCollectionView.scrollToItem(at: NSIndexPath(item: 0, section: 0) as IndexPath, at: .right, animated: true)
            nowPage = 0
            return
        }
        // 다음 페이지로 전환
        nowPage += 1
        adCollectionView.scrollToItem(at: NSIndexPath(item: nowPage, section: 0) as IndexPath, at: .right, animated: true)
    }
    

}

class adCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var adimgView: UIImageView!
}

extension MyPageViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    //컬렉션뷰 개수 설정
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataArray.count
    }
    
    //컬렉션뷰 셀 설정
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = adCollectionView.dequeueReusableCell(withReuseIdentifier: "adCollectionViewCell", for: indexPath) as! adCollectionViewCell
        cell.adimgView.image = dataArray[indexPath.row]
        return cell
    }
    
    // UICollectionViewDelegateFlowLayout 상속
    //컬렉션뷰 사이즈 설정
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: adCollectionView.frame.size.width  , height:  adCollectionView.frame.height)
    }
    
    //컬렉션뷰 감속 끝났을 때 현재 페이지 체크
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        nowPage = Int(scrollView.contentOffset.x) / Int(scrollView.frame.width)
    }
}
