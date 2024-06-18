//
//  RegisterViewController.swift
//  Login
//
//  Created by João Pedro Volponi on 16/06/24.
//

import Foundation
import UIKit

class RegisterViewController: UIViewController {
    
    var registerScreen: RegisterScreen?
    
    override func loadView() {
        self.registerScreen = RegisterScreen()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = self.registerScreen
        self.registerScreen?.configTextFieldDelegate(delegate: self)
    }
}

extension RegisterViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
