import XCTest

import PlaygroundPackageTests

var tests = [XCTestCaseEntry]()
tests += PlaygroundPackageTests.allTests()
XCTMain(tests)
