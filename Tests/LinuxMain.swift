import XCTest

import OrderingTests

var tests = [XCTestCaseEntry]()
tests += OrderingTests.allTests()
XCTMain(tests)