#if !canImport(ObjectiveC)

import XCTest

public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(UIntInfinityTests.allTests),
        testCase(UIntInfinityAdditionTests.allTests),
        testCase(UIntInfinitySubtractionTests.allTests),
    ]
}

#endif
