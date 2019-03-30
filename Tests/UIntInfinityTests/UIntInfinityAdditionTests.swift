
import XCTest
import UIntInfinity

final class UIntInfinityAdditionTests: XCTestCase {
    static var allTests = [
        ("test_adding_1_plus_1_equals_2", test_adding_1_plus_1_equals_2),
        ("test_adding_1_plus_2_equals_3", test_adding_1_plus_2_equals_3),
        ("test_adding_2_plus_2_equals_4", test_adding_2_plus_2_equals_4),
        ("test_adding_5_plus_5_equals_10", test_adding_5_plus_5_equals_10),
        ("test_adding_44_plus_11_equals_55", test_adding_44_plus_11_equals_55),
        ("test_adding_999_plus_1_equals_1000", test_adding_999_plus_1_equals_1000),
        ("test_adding_999999999_plus_999999999_equals_1999999998", test_adding_999999999_plus_999999999_equals_1999999998),
        ("test_adding_numbers_of_unequal_size", test_adding_numbers_of_unequal_size),
        ("test_adding_huge_numbers_of_unequal_size", test_adding_huge_numbers_of_unequal_size),
        ("test_adding_very_huge_numbers_of_unequal_size_using_plus_equal", test_adding_very_huge_numbers_of_unequal_size_using_plus_equal),
    ]

    func test_adding_1_plus_1_equals_2() {
        let subA = UInf(1)
        let subB = UInf(1)
        let result = subA + subB
        XCTAssertEqual(result, UInf(2))
    }

    func test_adding_1_plus_2_equals_3() {
        let subA = UInf(1)
        let subB = UInf(2)
        let result = subA + subB
        XCTAssertEqual(result, UInf(3))
    }

    func test_adding_2_plus_2_equals_4() {
        let subA = UInf(2)
        let subB = UInf(2)
        let result = subA + subB
        XCTAssertEqual(result, UInf(4))
    }

    func test_adding_5_plus_5_equals_10() {
        let subA = UInf(5)
        let subB = UInf(5)
        let result = subA + subB
        XCTAssertEqual(result, UInf(10))
    }

    func test_adding_44_plus_11_equals_55() {
        let subA = UInf(44)
        let subB = UInf(11)
        let result = subA + subB
        XCTAssertEqual(result, UInf(55))
    }

    func test_adding_999_plus_1_equals_1000() {
        let subA = UInf(999)
        let subB = UInf(1)
        let result = subA + subB
        XCTAssertEqual(result, UInf(1000))
    }

    func test_adding_999999999_plus_999999999_equals_1999999998() {
        let subA = UInf(999999999)
        let subB = UInf(999999999)
        let result = subA + subB
        XCTAssertEqual(result, UInf(1999999998))
    }

    func test_adding_numbers_of_unequal_size() {
        let subA = UInf("1234")
        let subB = UInf("11")
        let result = subA + subB
        XCTAssertEqual(result, UInf("1245"))
    }

    func test_adding_huge_numbers_of_unequal_size() {
        let subA = UInf("1234567890987654321234567891")
        let subB = UInf(987654331)
        let result = subA + subB
        XCTAssertEqual(result, UInf("1234567890987654322222222222"))
    }

    func test_adding_very_huge_numbers_of_unequal_size_using_plus_equal() {
        var subA = UInf("999999998888888777777666665555022001234567890987654321234567891")
        let subB = UInf("9999888877776666555544443333222211110000398765433103456837013573460582609")
        subA += subB
        XCTAssertEqual(subA, UInf("9999888878776666554433332110999877775555420766667671347824667894695150500"))
    }
}

