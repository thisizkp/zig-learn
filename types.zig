const std = @import("std");
const assert = std.debug.assert;

// types are values that must be known at compile-time
test "types are values" {
    const T1 = u8;
    const T2 = bool;
    assert(T1 != T2);

    const x: T2 = true;
    assert(x);
}