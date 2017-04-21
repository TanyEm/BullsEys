//
//  BullsEysUITests.swift
//  BullsEysUITests
//
//  Created by Tanya Tomchuk on 07.02.17.
//  Copyright © 2017 Tanya Tomchuk. All rights reserved.
//

import XCTest

class BullsEysUITests: XCTestCase {
        
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
        
        
        let app = XCUIApplication()
        let element = app.children(matching: .window).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element
        element.children(matching: .button).element(boundBy: 2).tap()
        
        let element2 = app.webViews.children(matching: .other).element
        element2.swipeRight()
        element2.swipeLeft()
        app.buttons["Close"].tap()
        app.sliders["49%"].swipeDown()
        app.buttons["Hit Me!"].tap()
        app.alerts["Not even close..."].buttons["OK"].tap()
        element.children(matching: .button).element(boundBy: 1).tap()
        
        
        
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
}
