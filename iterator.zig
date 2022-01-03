const std = @import("std");

pub fn main() void {
    const msg = "Testing iterators in zig";
    var iterator = std.mem.tokenize(u8, msg, " ");
    while (iterator.next()) |item| {
        std.debug.print("{s}\n", .{item});
    }
}