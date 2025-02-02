//
//  iOSUITests.swift
//  iOSUITests
//
//  Created by Alex Basson on 8/12/24.
//

import XCTest

final class iOSUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testCounter() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()

        
        let tabBar = XCUIApplication().tabBars["Tab Bar"]
        tabBar.buttons["Counter"].tap()
        
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
}
