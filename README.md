# UIntfinity ( UInf )

```
let a = UInf("1234567890987654321234567891")

let b = UInf(987654331)

let result = a + b

// UInf("1234567890987654322222222222")

```

This came about because I wanted to add and subtract numbers larger than 64-bit
using Swift on a Raspberry Pi. It uses strings to store values so theoretically can be
as wide as it needs to be.

Raw performance is not a primary concern; it was written to be simple rather than efficient.
If you need that, then there are alternative libraries floating around on github that can also
do multiplication and division, something this module has no current plans of supporting
at this time.

This module is mainly intended for entertainment and education purposes. But if you find
it useful, then by all means enjoy it. It supports swiftPM.
