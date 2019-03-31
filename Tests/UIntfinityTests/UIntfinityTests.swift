
import XCTest
import UIntfinity

final class UIntfinityTests: XCTestCase {
    static var allTests = [
        ("test_create_empty_should_equal_zero", test_create_empty_should_equal_zero),
        ("test_create_zero_should_equal_zero", test_create_zero_should_equal_zero),
        ("test_create_with_uint64_gives_matching_result", test_create_with_uint64_gives_matching_result),
        ("test_create_with_string_gives_matching_result", test_create_with_string_gives_matching_result),
        ("test_create_clone_gives_matching_result", test_create_clone_gives_matching_result),
        ("test_description_is_numeric_and_correct_directon", test_description_is_numeric_and_correct_directon),
        ("test_debug_description_is_numeric_and_correct_directon", test_debug_description_is_numeric_and_correct_directon),
    ]

    func test_create_empty_should_equal_zero() {
        XCTAssert(UIntfinity() == "0")
    }

    func test_create_zero_should_equal_zero() {
        XCTAssert(UIntfinity.zero == "0")
    }

    func test_create_with_uint64_gives_matching_result() {
        XCTAssert(UIntfinity(1234567890987654321) == "1234567890987654321")
    }

    func test_create_with_string_gives_matching_result() {
        XCTAssert(UIntfinity("123456789") == "123456789")
    }

    func test_create_clone_gives_matching_result() {
        let original = UIntfinity("987654321")
        XCTAssert(UInf(original) == original)
    }

    func test_description_is_numeric_and_correct_directon() {
        var subject = UInf("987654321")
        subject -= UInf("900000000")
        XCTAssertEqual(subject.description, "87654321")
    }

    func test_debug_description_is_numeric_and_correct_directon() {
        var subject = UInf("987654321")
        subject -= UInf("900000000")
        XCTAssertEqual(subject.debugDescription, "87654321")
    }
}
