//
//  LoginViewModelTestCases.swift
//  AppLoginValidationTests
//
//  Created by Anil Makhija on 14/04/25.
//

import XCTest
@testable import AppLoginValidation

final class LoginViewModelTestCases: XCTestCase {
    var viewModel: LoginVM?
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        viewModel = LoginVM()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        viewModel = nil
    }
    
    func testInvalidEmail() {
        guard let viewModel else {
            XCTFail("Failed to initialize viewModel")
            return
        }
        
        let type = viewModel.validation(email: "", password: "")
        XCTAssertEqual(type, .emptyEmail, "Email should not be empty")
//        XCTAssertEqual(type.rawValue, "Email should not be empty")
//        XCTAssertFalse(type != .emptyEmail, "Email should not be empty")
    }
    
    func testInvalidatePassword() {
        guard let viewModel else {
            XCTFail("Failed to initialize viewModel")
            return
        }
        let type = viewModel.validation(email: "makhija61@gmail.com", password: "")
        XCTAssertEqual(type, .emptyPassword, "Password should not be empty")
//        XCTAssertTrue(type == .emptyPassword, "Password should not be empty")
//        XCTAssertEqual(type.rawValue, "Password should not be empty")
        
        let type1 = viewModel.validation(email: "makhija61@gmail.com", password: "12345")
        XCTAssertEqual(type1, .lengthOfPassword, "Password should be atleast 6 characters long")
        
    }
    
    func testLoginSuccess() {
        guard let viewModel else {
            XCTFail("Failed to initialize viewModel")
            return
        }
        
        let type = viewModel.validation(email: "makhija61@gmail.com", password: "1234567")
        XCTAssertEqual(type, .sucess, "Login Success")
    }
}
