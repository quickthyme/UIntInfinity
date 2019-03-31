
public typealias UInf = UIntfinity

public struct UIntfinity:
    Equatable,
    AdditiveArithmetic,
    CustomStringConvertible,
    CustomDebugStringConvertible
{
    public init() { self.value = "0" }
    public init(_ n: UIntfinity) { self.value = n.value }
    public init(_ u: UInt64) { self.init( String(u) ) }
    public init(_ s: String) { self.value = String(s.reversed()) }
    internal init(raw: String) { self.value = raw }
    internal let value: String

    public static var zero: UIntfinity {
        return UIntfinity()
    }

    public var description: String {
        return String(value.reversed())
    }

    public var debugDescription: String {
        return String(value.reversed())
    }

    public static func ==(lhs: UIntfinity, rhs: UIntfinity) -> Bool {
        return lhs.value == rhs.value
    }

    public static func ==(lhs: UIntfinity, rhs: String) -> Bool {
        return lhs.value == String(rhs.reversed())
    }
}


internal extension UIntfinity {
    static func digitOf(_ c: Character) -> UInt8? {
        guard let u: UInt8 = UInt8(String(c)) else { return nil }
        return (u < 10) ? u : nil
    }

    static func padMax(_ l: String, _ r: String) -> (String, String) {
        let lc = l.count; let rc = r.count
        guard (lc != rc) else { return (l,r) }
        let maxc = max(lc, rc)
        let padc = maxc - min(lc, rc)
        let newL: String = (lc < maxc) ? addZeros(l, padc) : l
        let newR: String = (rc < maxc) ? addZeros(r, padc) : r
        return (newL, newR)
    }

    static func addZeros(_ s: String, _ count: Int) -> String {
        return s + String(repeating: "0", count: count)
    }

    static func removeZeros(_ s: String) -> String {
        var rs: String = s
        while (rs.last == "0") { _ = rs.removeLast() }
        return (rs.isEmpty) ? "0" : rs
    }
}
