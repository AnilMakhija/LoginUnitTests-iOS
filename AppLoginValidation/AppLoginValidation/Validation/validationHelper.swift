//
//  validationHelper.swift
//  AppLoginValidation
//
//  Created by Anil Makhija on 14/04/25.
//

import Foundation

final class ValidationHelper {
    func validateEmail(_ email:String?) -> ValidagtionType{
        guard let email, !email.isEmpty else {
            return .emptyEmail
        }
        return .sucess
    }
    func validatePassword(_ password:String?) -> ValidagtionType{
        guard let password, !password.isEmpty else {
            return .emptyPassword
        }
        
        guard password.count > 6 else {
            return .lengthOfPassword
        }
        return .sucess
        
    }
    func validateLogin(_ email:String?, password:String?) -> ValidagtionType{
        let emailType = validateEmail(email)
        let passwordType = validatePassword(password)
        
        if emailType != .sucess {
            return emailType
        }else if passwordType != .sucess{
            return passwordType
        }else {
            return .sucess
        }
    }
}
