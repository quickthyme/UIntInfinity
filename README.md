# UIntInfinity ( UInf )

```
let a = UInf("1234567890987654321234567891")

let b = UInf(987654331)

let result = a + b

// UInf("1234567890987654322222222222")

```

I wrote this so I could add and subtract numbers larger than 64-bit on a Raspberry Pi.
It uses strings to store values so theoretically can be as wide as it needs to be.

Raw performance is not a concern; it was written to be simple rather than efficient.
If you need that, then there alternative libraries floating around on github that can
also do multiplication and division, something this module has no current plans of
supporting.

This module is intended for entertainment and education purposes only. But if you find
it useful then by all means enjoy it however ye will. It supports swiftPM, and follows
semantic versioning.
