//
//  RegisterScreen.swift
//  Login
//
//  Created by João Pedro Volponi on 16/06/24.
//

import UIKit

class RegisterScreen: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.configBackGround()
    }
    
    private func configBackGround() {
        backgroundColor = UIColor(named: "green")
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
