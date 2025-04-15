//
//  LoginVM.swift
//  AppLoginValidation
//
//  Created by Anil Makhija on 14/04/25.
//

import Foundation

final class LoginVM {
    
    private let helper = ValidationHelper()
    func validation(email: String?, password:String?) -> ValidagtionType {
        helper.validateLogin(email, password: password)
//        guard let email, !email.isEmpty else {
//            return .emptyEmail
//        }
//        guard let password, !password.isEmpty else {
//            return .emptyPassword
//        }
//        return .sucess
    }
}
