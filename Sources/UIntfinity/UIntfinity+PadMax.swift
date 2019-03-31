
internal extension UIntfinity {

    static func padMax(_ l: String, _ r: String) -> (String, String) {
        let lc = l.count; let rc = r.count
        guard (lc != rc) else { return (l,r) }
        let maxc = max(lc, rc)
        let padc = maxc - min(lc, rc)
        let newL: String = (lc < maxc) ? l.addZeroes(padc) : l
        let newR: String = (rc < maxc) ? r.addZeroes(padc) : r
        return (newL, newR)
    }
}
