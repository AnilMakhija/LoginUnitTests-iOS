//
//  validationType.swift
//  AppLoginValidation
//
//  Created by Anil Makhija on 14/04/25.
//

import Foundation

enum ValidagtionType: String {
    case emptyEmail = "Email cannot be empty"
    case emptyPassword = "Password cannot be empty"
    case lengthOfPassword = "Password shoud be more then 6 characters"
    case sucess = "Success"
}
