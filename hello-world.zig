// import takes in a file or a package name as an argument
// and returns a struct type. All declarations that are labelled as pub
// will end up in the struct type.
// @import("std") gives access to the standard library.
const std = @import("std");

pub fn main() void {
    std.debug.print("Hello World\n", .{});
}