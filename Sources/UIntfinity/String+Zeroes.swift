
internal extension String {

    func addZeroes(_ count: Int) -> String {
        return self + String(repeating: "0", count: count)
    }

    func removeZeroes() -> String {
        var rs: String = self
        while (rs.last == "0") { _ = rs.removeLast() }
        return (rs.isEmpty) ? "0" : rs
    }
}
