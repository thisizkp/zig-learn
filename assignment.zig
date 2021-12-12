const std = @import("std");

pub fn main() void {
    const a: u8 = 10; // immutable variable
    var b: i32 = 100; // mutable variable

    // @as for explicit type casting
    // type can be inferred from value
    const c = @as(i32, 10);

    std.debug.print("a = {}, b = {}, c = {}\n", .{a, b, c});
}