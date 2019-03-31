
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
        return String(value.removeZeroes().reversed())
    }

    public var debugDescription: String {
        return String(value.removeZeroes().reversed())
    }

    public static func ==(lhs: UIntfinity, rhs: UIntfinity) -> Bool {
        return lhs.value.removeZeroes() == rhs.value.removeZeroes()
    }

    public static func ==(lhs: UIntfinity, rhs: String) -> Bool {
        return lhs.value.removeZeroes() == String(rhs.removeZeroes().reversed())
    }
}
