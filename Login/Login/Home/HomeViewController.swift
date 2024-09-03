//
//  HomeViewController.swift
//  Login
//
//  Created by João Pedro Volponi on 23/07/24.
//

import Foundation
import UIKit

class HomeViewController: UIViewController {
    
    var homeScreen: HomeScreen?
    var data: [DataUser] = [DataUser(name: "Caio", nameImage: "menino1"),
                            DataUser(name: "João", nameImage: "menino2"),
                            DataUser(name: "Monica", nameImage: "menina1")
                            
    ]
    
    override func loadView() {
        self.homeScreen = HomeScreen()
        self.view = homeScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.homeScreen?.configTableViewProtocols(delegate: self, dataSource: self)
    }
    
}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.data.count + 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 3 {
            let cell: SportTableViewCell? = tableView.dequeueReusableCell(withIdentifier: SportTableViewCell.identifier, for: indexPath) as? SportTableViewCell
            return cell ?? UITableViewCell()
        }
        
        let cell: UserDetailTableViewCell? = tableView.dequeueReusableCell(withIdentifier: UserDetailTableViewCell.identifier, for: indexPath) as? UserDetailTableViewCell
        cell?.setUpCell(data: self.data[indexPath.row])
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heighForRowAt indexPath: IndexPath) -> CGFloat{
        return 120
    }
}
