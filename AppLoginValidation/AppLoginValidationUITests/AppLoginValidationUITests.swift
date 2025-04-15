//
//  AppLoginValidationUITests.swift
//  AppLoginValidationUITests
//
//  Created by Anil Makhija on 14/04/25.
//

import XCTest

final class AppLoginValidationUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        let app = XCUIApplication()
        app.launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    func testLoginScreenFlow() throws {
        let app = XCUIApplication()
        
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    

    
    
    
    
}
