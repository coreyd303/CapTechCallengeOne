//
//  CapTech_Assigment_1UITests.swift
//  CapTech Assigment 1UITests
//
//  Created by Corey Davis on 6/28/17.
//  Copyright © 2017 Corey Davis. All rights reserved.
//

import XCTest

class CapTech_Assigment_1UITests: XCTestCase {

  var app: XCUIApplication!

  override func setUp() {
    super.setUp()
        
    continueAfterFailure = false

    app = XCUIApplication()
    app.launchArguments += ["UI-Testing"]
    app.launch()
  }

  func testHomePageHasCorrectElements() {
    let helloText = app.staticTexts["Hello World"]
    let clickMeButton = app.buttons["Click Me"]

    XCTAssertTrue(helloText.exists, "Hello World should be displayed")
    XCTAssertTrue(clickMeButton.exists, "Click me button should be present")
  }

  func testCanNavigateToTableScreen() {
    let clickMeButton = app.buttons["Click Me"]
    clickMeButton.tap()

    let backButton = app.navigationBars.buttons["<< home"]
    let pageTitle = app.navigationBars.staticTexts["Run History"]

    XCTAssertTrue(backButton.exists, "Should see <<home button in Nav bar")
    XCTAssertTrue(pageTitle.exists, "Should see page title")
  }

  func testTableScreenShowsStartTimes() {
    let clickMeButton = app.buttons["Click Me"]

    clickMeButton.tap()

    let listDate = returnListDate()
    XCTAssertTrue(listDate.exists, "The date should be in the list")
  }

  func testUserCanRemoveLastDateRecordFromList() {
    let clickMeButton = app.buttons["Click Me"]
    clickMeButton.tap()

    let listDate = returnListDate()
    XCTAssertTrue(listDate.exists, "The date should be in the list")

    let removeButton = app.navigationBars.buttons["Remove"]
    removeButton.tap()

    XCTAssertFalse(listDate.exists, "The date should not be in the list")
  }

  func returnListDate() -> XCUIElement {
    let now = Date()
    let dateFormatter = DateFormatter()

    dateFormatter.timeStyle = DateFormatter.Style.none
    dateFormatter.dateStyle = DateFormatter.Style.medium

    let dateString = dateFormatter.string(from: now)
    let listDate = app.tables.staticTexts[dateString]

    return listDate
  }
}
