#if os(Linux)

import XCTest
import UIntInfinityTests

var tests = [XCTestCaseEntry]()
tests += UIntInfinityTests.allTests()
XCTMain(tests)

#endif
