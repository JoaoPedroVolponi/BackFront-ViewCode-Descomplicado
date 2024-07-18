//
//  Alert.swift
//  Login
//
//  Created by João Pedro Volponi on 18/07/24.
//

import Foundation
import UIKit

class Alert: NSObject {
    var controller: UIViewController
    
    init(controller: UIViewController) {
        self.controller = controller
    }
    
    func getAlert(titulo: String, mensagem: String, completion:(() -> Void)? = nil) {
        let alertController = UIAlertController(title: titulo, message: mensagem, preferredStyle: .alert)
        let cancelar = UIAlertAction(title: "OK", style: .cancel) { acao in
            completion?()
        }
        alertController.addAction(cancelar)
        self.controller.present(alertController, animated: true, completion: nil)
    }
}
