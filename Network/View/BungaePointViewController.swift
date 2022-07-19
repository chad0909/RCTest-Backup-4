//
//  BungaePointViewController.swift
//  RCtest-BunJangApp
//
//  Created by 077tech on 2022/07/19.
//

import UIKit

class BungaePointViewController: UIViewController {

    @IBAction func tapDismiss(_ sender: Any) {
        dismiss(animated: true)
    }
    
    @IBOutlet weak var collectionView: UICollectionView!
    var nowPage: Int = 0
    let dataArray: Array<UIImage> = [UIImage(named: "point")!, UIImage(named: "point2")!]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.delegate = self
        collectionView.dataSource = self
        bannerTimer()
    }

    
// 배너 타이머
    func bannerTimer() {
        let _: Timer = Timer.scheduledTimer(withTimeInterval: 2, repeats: true) { (Timer) in
            self.bannerMove()
        }
    }
    func bannerMove() {
        if nowPage == dataArray.count-1 {
            collectionView.scrollToItem(at: NSIndexPath(item: 0, section: 0) as IndexPath, at: .right, animated: true)
            nowPage = 0
            return
        }
        nowPage += 1
        collectionView.scrollToItem(at: NSIndexPath(item: nowPage, section: 0) as IndexPath, at: .right, animated: true)
    }
    

}



class BannerCell: UICollectionViewCell {
    
    @IBOutlet weak var pointImg: UIImageView!
    
}


   


extension BungaePointViewController: UICollectionViewDelegate, UICollectionViewDataSource,
UICollectionViewDelegateFlowLayout {
//컬렉션뷰 개수 설정
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return dataArray.count
    }
    
//컬렉션뷰 셀 설정
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "BannerCell", for: indexPath) as! BannerCell
            cell.pointImg.image = dataArray[indexPath.row]
            return cell
    }
    

//컬렉션뷰 사이즈 설정
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.size.width  , height:  collectionView.frame.height)
    }
    
//컬렉션뷰 감속 끝났을 때 현재 페이지 체크
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        nowPage = Int(scrollView.contentOffset.x) / Int(scrollView.frame.width)
    }
}
