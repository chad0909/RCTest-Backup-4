//
//  TransactionViewController.swift
//  RCtest-BunJangApp
//
//  Created by 077tech on 2022/07/20.
//

import UIKit
import Tabman
import Pageboy

class TransactionViewController: TabmanViewController {

    @IBAction func backButton(_ sender: Any) {
        dismiss(animated: true)
    }
    // 상단 탭바 라이브러리 - TabMan 사용
    private var viewControllers: Array<UIViewController> = []
    @IBOutlet weak var tempView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let BuyTab = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "TransactionBuyViewController") as! TransactionBuyViewController
        let SellTab = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "TransactionSellViewController") as! TransactionSellViewController
        let CalculateTab = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "TransactionCalculateViewController") as! TransactionCalculateViewController

        viewControllers.append(BuyTab)
        viewControllers.append(SellTab)
        viewControllers.append(CalculateTab)

        self.dataSource = self

        // Create bar
        let bar = TMBar.ButtonBar()
//        let bar = TMBar.TabBar()
        bar.backgroundView.style = .blur(style: .regular)
        bar.layout.contentInset = UIEdgeInsets(top: 0.0, left: 0.0, bottom: 0.0, right: 0.0)
        bar.buttons.customize { (button) in
            button.tintColor = .gray // 선택 안되어 있을 때
            button.selectedTintColor = .black // 선택 되어 있을 때
            button.font = UIFont.boldSystemFont(ofSize: 14)
        }
        // 인디케이터 조정
        bar.indicator.weight = .light
        bar.indicator.tintColor = .black
        bar.indicator.overscrollBehavior = .compress
        bar.layout.alignment = .centerDistributed
        bar.layout.contentMode = .fit
        bar.layout.interButtonSpacing = 15 // 버튼 사이 간격
        
    
        bar.layout.transitionStyle = .snap // Customize

        // Add to view
        addBar(bar, dataSource: self, at: .custom(view: tempView, layout: nil))

        
        
    }
}

extension TransactionViewController: PageboyViewControllerDataSource, TMBarDataSource {
    
    func barItem(for bar: TMBar, at index: Int) -> TMBarItemable {
        
        // MARK: - Tab 안 글씨들
        switch index {
        case 0:
            return TMBarItem(title: "구매")
        case 1:
            return TMBarItem(title: "판매")
        case 2:
            return TMBarItem(title: "정산")
        default:
            let title = "Page \(index)"
            return TMBarItem(title: title)
        }

    }
    
    func numberOfViewControllers(in pageboyViewController: PageboyViewController) -> Int {
        return viewControllers.count
    }
    
    func viewController(for pageboyViewController: PageboyViewController, at index: PageboyViewController.PageIndex) -> UIViewController? {
        return viewControllers[index]
    }
    
    func defaultPage(for pageboyViewController: PageboyViewController) -> PageboyViewController.Page? {
        return nil
    }
    
    
}

