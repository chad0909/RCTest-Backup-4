//
//  LoginViewController.swift
//  RCtest-BunJangApp
//
//  Created by 077tech on 2022/07/17.
//

import UIKit

class LoginViewController: BaseViewController {

    @IBOutlet weak var loginCollectionView: UICollectionView!
    @IBOutlet weak var pageController: UIPageControl!
    @IBOutlet weak var kakaoLogin: UIButton!
    @IBOutlet weak var appleLogin: UIButton!
    @IBOutlet weak var diffLogin: UIButton!
    @IBAction func diffLoginClick(_ sender: Any) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: "DifferentLoginViewController") as! DifferentLoginViewController
        vc.modalPresentationStyle = .overCurrentContext
        self.present(vc, animated: true, completion: nil)
    }
    
    var nowPage: Int = 0
    let dataArray: Array<UIImage> = [UIImage(named: "login1")!, UIImage(named: "login2")!, UIImage(named: "login3")!, UIImage(named: "login4")!]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        UIUpdate()
        
        loginCollectionView.delegate = self
        loginCollectionView.dataSource = self
        
    }
    
    func UIUpdate(){
        kakaoLogin.backgroundColor = UIColor.kakaoYellow
        //모서리 굴곡률
        kakaoLogin.layer.cornerRadius = 25
        //테두리 굵기
        kakaoLogin.layer.borderWidth = 0.8
        //테두리 색상
        kakaoLogin.layer.borderColor = UIColor.kakaoYellow.cgColor
        
        //모서리 굴곡률
        appleLogin.layer.cornerRadius = 25
        //테두리 굵기
        appleLogin.layer.borderWidth = 0.8
        //테두리 색상
        appleLogin.layer.borderColor = UIColor.black.cgColor
        
        loginCollectionView.showsHorizontalScrollIndicator = false
    }
    

}



extension LoginViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    //컬렉션뷰 개수 설정
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataArray.count
    }
    
    //컬렉션뷰 셀 설정
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = loginCollectionView.dequeueReusableCell(withReuseIdentifier: "LoginCollectionViewCell", for: indexPath) as! LoginCollectionViewCell
        cell.imgView.image = dataArray[indexPath.row]
        return cell
    }
    
    // UICollectionViewDelegateFlowLayout 상속
    //컬렉션뷰 사이즈 설정
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: loginCollectionView.frame.size.width  , height:  loginCollectionView.frame.height)
    }
    
    //컬렉션뷰 감속 끝났을 때 현재 페이지 체크
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        nowPage = Int(scrollView.contentOffset.x) / Int(scrollView.frame.width)
    }
    
    func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
        let page = Int(targetContentOffset.pointee.x / scrollView.frame.width)
        self.pageController.currentPage = page
    }
}

