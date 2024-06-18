//
//  RegisterScreen.swift
//  Login
//
//  Created by João Pedro Volponi on 16/06/24.
//

import UIKit

class RegisterScreen: UIView {
    
    lazy var backButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(named: "back"), for: .normal)
        return button
    }()
    
    lazy var imageAddUser: UIImageView = {
       let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "user")
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    lazy var emailTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.borderStyle = .roundedRect
        textField.autocorrectionType = .no
        textField.backgroundColor = .white
        textField.keyboardType = .emailAddress
        textField.placeholder = "Digite seu e-mail"
        textField.font = UIFont.systemFont(ofSize: 14)
        textField.textColor = .darkGray
        return textField
    }()
    
    lazy var passwordTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.borderStyle = .roundedRect
        textField.autocorrectionType = .no
        textField.backgroundColor = .white
        textField.keyboardType = .default
        textField.placeholder = "Digite sua senha"
        textField.font = UIFont.systemFont(ofSize: 14)
        textField.textColor = .darkGray
        textField.isSecureTextEntry = true
        return textField
    }()
    
    lazy var registerButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Cadastrar", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.clipsToBounds = true
        button.layer.cornerRadius = 7.5
        button.backgroundColor = UIColor(named: "greenSecundary")
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.configBackGround()
        self.configSuperView()
        self.setupContraints()
    }
    
    public func configTextFieldDelegate(delegate: UITextFieldDelegate) {
        self.emailTextField.delegate = delegate
        self.passwordTextField.delegate = delegate
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configBackGround() {
        backgroundColor = UIColor(named: "green")
    }
    
    private func configSuperView() {
        addSubview(backButton)
        addSubview(imageAddUser)
        addSubview(emailTextField)
        addSubview(passwordTextField)
        addSubview(registerButton)
    }
    
    private func setupContraints() {
        NSLayoutConstraint.activate([
            imageAddUser.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20),
            imageAddUser.centerXAnchor.constraint(equalTo: centerXAnchor),
            imageAddUser.widthAnchor.constraint(equalToConstant: 150),
            imageAddUser.heightAnchor.constraint(equalToConstant: 150),
            
            backButton.topAnchor.constraint(equalTo: imageAddUser.topAnchor),
            backButton.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 20),
            
            emailTextField.topAnchor.constraint(equalTo: imageAddUser.bottomAnchor, constant: 10),
            emailTextField.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 20),
            emailTextField.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -20),
            emailTextField.heightAnchor.constraint(equalToConstant: 40),
            
            passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 10),
            passwordTextField.leadingAnchor.constraint(equalTo: emailTextField.leadingAnchor),
            passwordTextField.trailingAnchor.constraint(equalTo: emailTextField.trailingAnchor),
            passwordTextField.heightAnchor.constraint(equalToConstant: 45),
            
            registerButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 10),
            registerButton.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 20),
            registerButton.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -20),
            registerButton.heightAnchor.constraint(equalToConstant: 40),
        ])
    }
}
