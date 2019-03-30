
import XCTest
import UIntInfinity

final class UIntInfinityTests: XCTestCase {
    static var allTests = [
        ("test_create_empty_should_equal_zero", test_create_empty_should_equal_zero),
        ("test_create_with_uint64_gives_matching_result", test_create_with_uint64_gives_matching_result),
        ("test_create_with_string_gives_matching_result", test_create_with_string_gives_matching_result),
        ("test_create_clone_gives_matching_result", test_create_clone_gives_matching_result),
    ]

    func test_create_empty_should_equal_zero() {
        XCTAssert(UIntInfinity() == "0")
    }

    func test_create_with_uint64_gives_matching_result() {
        XCTAssert(UIntInfinity(1234567890987654321) == "1234567890987654321")
    }

    func test_create_with_string_gives_matching_result() {
        XCTAssert(UIntInfinity("123456789") == "123456789")
    }

    func test_create_clone_gives_matching_result() {
        let original = UIntInfinity("987654321")
        XCTAssert(UInf(original) == original)
    }
}
