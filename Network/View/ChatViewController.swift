//
//  ChatViewController.swift
//  RCtest-BunJangApp
//
//  Created by 077tech on 2022/07/17.
//

import UIKit

class ChatViewController: UIViewController {

    @IBOutlet weak var chatTableView: UITableView!
    @IBOutlet weak var AdimagView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        registerXib()
        chatTableView.delegate = self
        chatTableView.dataSource = self
        
        
    }
    
    private func registerXib() {
        let nibName = UINib(nibName: "ChatTableViewCell", bundle: nil)
        chatTableView.register(nibName, forCellReuseIdentifier: "chatCell")
    }



}

extension ChatViewController : UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "chatCell", for: indexPath)
        return cell
    }

    
}
