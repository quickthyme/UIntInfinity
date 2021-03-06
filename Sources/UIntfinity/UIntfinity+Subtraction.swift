
public extension UIntfinity {

    static func - (lhs: UIntfinity, rhs: UIntfinity) -> UIntfinity {
        let (padL, padR) = padMax(lhs.value, rhs.value)
        let zipped = zip(padL, padR)
        let solved: (String, Bool) = zipped.lazy
            .reduce(("", false), ({ r, n in
                let (v, b) = subtract(n.0, n.1, r.1)
                return (r.0 + String(v), b)
            }))
        return UIntfinity(raw: (solved.1) ? "0" : solved.0)
    }

    static func -= (lhs: inout UIntfinity, rhs: UIntfinity) {
        lhs = lhs - rhs
    }
}

internal extension UIntfinity {

    static func subtract(_ charL: Character,
                         _ charR: Character,
                         _ borrow: Bool) -> (Character, Bool) {
        guard
            var digitL = charL.digit,
            let digitR = charR.digit
            else { return (Character(""), true) }

        var didBorrow: Bool = false

        if (borrow) {
            if (digitL == 0) {
                digitL += 10
                didBorrow = true
            }
            digitL -= 1
        }

        if (digitL < digitR) {
            digitL += 10
            didBorrow = true
        }

        return (Character("\(digitL - digitR)"), didBorrow)
    }
}
