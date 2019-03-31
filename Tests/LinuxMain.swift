#if os(Linux)

import XCTest
import UIntfinityTests

var tests = [XCTestCaseEntry]()
tests += UIntfinityTests.allTests()
XCTMain(tests)

#endif
