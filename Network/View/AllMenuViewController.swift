//
//  AllMenuViewController.swift
//  RCtest-BunJangApp
//
//  Created by 077tech on 2022/07/19.
//

import UIKit
import Tabman
import Pageboy

class AllMenuViewController: TabmanViewController {
    
    @IBAction func pressX(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    // 상단 탭바 라이브러리 - TabMan 사용
    private var viewControllers: Array<UIViewController> = []
    @IBOutlet weak var tempView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let categoryTab = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "AllMenuCategoryViewController") as! AllMenuCategoryViewController
        let brandTab = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "AllMenuBrandViewController") as! AllMenuBrandViewController
        let serviceTab = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "AllMenuServiceViewController") as! AllMenuServiceViewController

        viewControllers.append(categoryTab)
        viewControllers.append(brandTab)
        viewControllers.append(serviceTab)

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

extension AllMenuViewController: PageboyViewControllerDataSource, TMBarDataSource {
    
    func barItem(for bar: TMBar, at index: Int) -> TMBarItemable {
        
        // MARK: - Tab 안 글씨들
        switch index {
        case 0:
            return TMBarItem(title: "카테고리")
        case 1:
            return TMBarItem(title: "브랜드")
        case 2:
            return TMBarItem(title: "서비스")
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
