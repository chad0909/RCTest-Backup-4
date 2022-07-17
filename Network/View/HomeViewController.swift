//
//  HomeViewController.swift
//  RCtest-BunJangApp
//
//  Created by 077tech on 2022/07/17.
//

import UIKit

class HomeViewController: UIViewController {

    
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var navView: UIView!
    
    @IBOutlet weak var allMenuButton: UIImageView!
    @IBOutlet weak var searchButton: UIImageView!
    @IBOutlet weak var alarmButton: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        scrollView.delegate = self

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
