
import XCTest
import UIntfinity

final class UIntfinitySubtractionTests: XCTestCase {
    static var allTests = [
        ("test_subtracting_1_minus_1_equals_2", test_subtracting_1_minus_1_equals_0),
        ("test_subtracting_2_minus_1_equals_1", test_subtracting_2_minus_1_equals_1),
        ("test_subtracting_4_minus_2_equals_2", test_subtracting_4_minus_2_equals_2),
        ("test_subtracting_5_minus_4_equals_1", test_subtracting_5_minus_4_equals_1),
        ("test_subtracting_5_minus_5_equals_0", test_subtracting_5_minus_5_equals_0),
        ("test_subtracting_5_minus_7_equals_0", test_subtracting_5_minus_7_equals_0),
        ("test_subtracting_44_minus_11_equals_33", test_subtracting_44_minus_11_equals_33),
        ("test_subtracting_1000_minus_1_equals_999", test_subtracting_1000_minus_1_equals_999),
        ("test_subtracting_1999999998_minus_999999999_equals_999999999", test_subtracting_1999999998_minus_999999999_equals_999999999),
        ("test_subtracting_numbers_of_unequal_size", test_subtracting_numbers_of_unequal_size),
        ("test_subtracting_huge_numbers_of_unequal_size", test_subtracting_huge_numbers_of_unequal_size),
        ("test_subtracting_very_huge_numbers_of_unequal_size_using_minus_equal", test_subtracting_very_huge_numbers_of_unequal_size_using_minus_equal),
    ]

    func test_subtracting_1_minus_1_equals_0() {
        let subA = UInf("1")
        let subB = UInf("1")
        let result = subA - subB
        XCTAssertEqual(result, UInf("0"))
    }

    func test_subtracting_2_minus_1_equals_1() {
        let subA = UInf(2)
        let subB = UInf(1)
        let result = subA - subB
        XCTAssertEqual(result, UInf("1"))
    }

    func test_subtracting_4_minus_2_equals_2() {
        let subA = UInf("4")
        let subB = UInf("2")
        let result = subA - subB
        XCTAssertEqual(result, UInf("2"))
    }

    func test_subtracting_5_minus_4_equals_1() {
        let subA = UInf("5")
        let subB = UInf("4")
        let result = subA - subB
        XCTAssertEqual(result, UInf("1"))
    }

    func test_subtracting_5_minus_5_equals_0() {
        let subA = UInf("5")
        let subB = UInf("5")
        let result = subA - subB
        XCTAssertEqual(result, UInf("0"))
    }

    func test_subtracting_5_minus_7_equals_0() {
        let subA = UInf("5")
        let subB = UInf("7")
        let result = subA - subB
        XCTAssertEqual(result, UInf("0"))
    }

    func test_subtracting_44_minus_11_equals_33() {
        var subA = UInf("44")
        let subB = UInf("11")
        subA -= subB
        XCTAssertEqual(subA, UInf("33"))
    }

    func test_subtracting_1000_minus_1_equals_999() {
        let subA = UInf(1000)
        let subB = UInf("1")
        let result = subA - subB
        XCTAssertEqual(result, UInf(999))
    }

    func test_subtracting_1999999998_minus_999999999_equals_999999999() {
        let subA = UInf(1999999998)
        let subB = UInf(999999999)
        let result = subA - subB
        XCTAssertEqual(result, UInf(999999999))
    }

    func test_subtracting_numbers_of_unequal_size() {
        let subA = UInf("1234")
        let subB = UInf("11")
        let result = subA - subB
        XCTAssertEqual(result, UInf("1223"))
    }

    func test_subtracting_huge_numbers_of_unequal_size() {
        let subA = UInf("1000000000000000000000000000")
        let subB = UInf("987654321")
        let result = subA - subB
        XCTAssertEqual(result, UInf("999999999999999999012345679"))
    }

    func test_subtracting_very_huge_numbers_of_unequal_size_using_minus_equal() {
        var subA = UInf("9999888877776666555544443333222211110000398765433103456837013573460582609")
        let subB = UInf("999999998888888777777666665555022001234567890987654321234567891")
        subA -= subB
        XCTAssertEqual(subA, UInf("9999888876776666556655554555444544444445376764198535565849359252226014718"))
    }
}

