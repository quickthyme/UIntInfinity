#if !canImport(ObjectiveC)

import XCTest

public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(UIntfinityTests.allTests),
        testCase(UIntfinityAdditionTests.allTests),
        testCase(UIntfinitySubtractionTests.allTests),
    ]
}

#endif
