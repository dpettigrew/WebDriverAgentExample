//
//  WebDriverAgentExampleUITests.swift
//  WebDriverAgentExampleUITests
//
//  Created by David Pettigrew on 7/5/16.
//  Copyright © 2016 WalmartLabs. All rights reserved.
//

import XCTest
import WebDriverAgentLib

class WebDriverAgentExampleUITests: XCTestCase {
    static let springboard = XCUIApplication(privateWithPath: nil, bundleID: "com.apple.springboard")

    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        let tabBarsQuery = XCUIApplication().tabBars
        tabBarsQuery.buttons["Second"].tap()
        tabBarsQuery.buttons["First"].tap()
    }
    
}
