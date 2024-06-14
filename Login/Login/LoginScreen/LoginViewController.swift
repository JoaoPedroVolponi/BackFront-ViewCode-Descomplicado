//
//  ViewController.swift
//  Login
//
//  Created by João Pedro Volponi on 10/06/24.
//

import UIKit

class ViewController: UIViewController {
    var loginScreen: LoginScreen?
    
    override func loadView() {
        loginScreen = LoginScreen()
        view = loginScreen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
}
