//
//  AlertController+Entension.swift
//  AppLoginValidation
//
//  Created by Anil Makhija on 14/04/25.
//

import Foundation
import UIKit

extension UIViewController {
    
    func showAlert(message: String){
        let alert = UIAlertController(
            title: "Ok",
            message: message,
            preferredStyle: .alert
        )
        let ok = UIAlertAction(title: "Ok", style: .default)
        alert.addAction(ok)
        present(alert, animated: true)
    }
    
}
