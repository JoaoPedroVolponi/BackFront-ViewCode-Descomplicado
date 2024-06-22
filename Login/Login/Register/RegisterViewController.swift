//
//  RegisterViewController.swift
//  Login
//
//  Created by João Pedro Volponi on 16/06/24.
//

import Foundation
import UIKit
import Firebase

class RegisterViewController: UIViewController {
    
    var registerScreen: RegisterScreen?
    var auth: Auth?
    
    override func loadView() {
        self.registerScreen = RegisterScreen()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = self.registerScreen
        self.registerScreen?.configTextFieldDelegate(delegate: self)
        self.registerScreen?.delegate(delegate: self)
        self.auth = Auth.auth()
    }
}

extension RegisterViewController: UITextFieldDelegate {
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        self.registerScreen?.validaTextField()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

extension RegisterViewController: RegisterScreenProtocol {
    func actionBackButton() {
        self.navigationController?.popViewController(animated: true)
    }
    
    func actionRegisterButton() {
        guard let register = self.registerScreen else {return}
        
        self.auth?.createUser(withEmail: register.getEmail(), password: register.getPassword(), completion: { (result, error) in
            if error != nil {
                print("Error ao cadastar")
            } else {
                print("Sucesso")
            }
        })
        print("Register Button")
    }
}
