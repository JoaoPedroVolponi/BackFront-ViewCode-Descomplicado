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
}
