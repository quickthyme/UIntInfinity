
internal extension Character {

    var digit: UInt8? {
        guard let u: UInt8 = charDigits[self] else { return nil }
        return (u < 10) ? u : nil
    }
}

private let charDigits: [Character: UInt8] = [
    Character("0"): UInt8(0),
    Character("1"): UInt8(1),
    Character("2"): UInt8(2),
    Character("3"): UInt8(3),
    Character("4"): UInt8(4),
    Character("5"): UInt8(5),
    Character("6"): UInt8(6),
    Character("7"): UInt8(7),
    Character("8"): UInt8(8),
    Character("9"): UInt8(9),
]
