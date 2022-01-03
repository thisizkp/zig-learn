const std = @import("std");
const assert = std.debug.assert;

test "null ptr" {
    // const ptr = @intToPtr(*i32, 0x0) throws error
    // as there can't be pointers to null type (0)
    // any type can be made optional by prefixing it by ?
    const ptr = @intToPtr(?*i32, 0x0);
    assert (ptr == null);
}

// optional values can be unwrapped

// 1. using `orelse`
// const ptr = malloc(1234) orelse return null;

// 2. or using `if` statements
// if (optional_ptr) |ptr| { .. }

// 3. or using `while` statements
// while (it.next()) |it| { .. }