const std = @import("std");

// errors can't be ignored, use `try`, `catch` or `if`
// _ = throws_an_error()

// catch
fn error_handling_with_catch() void {
    const file = std.fs.cwd().openFile("not_exist/foo.txt", .{}) catch |err| label: {
        std.debug.print("unable to open file", .{err});
        const stderr = std.io.getStdErr();
        break :label stderr;
    };
    file.writeAll("blah blah blah...\n") catch return;
}

// try - shorcut for catch |err| return |err|
fn error_handling_with_try() void {
    const file = try std.fs.cwd().openFile("not_exist/foo.txt", .{});
    defer file.close();
    try file.writeAll("blah blah blah...\n");
}

// `switch` can be used to ensure all possible errors are handled
// const foo = throws_multiple_types_of_errors catch |err| switch (err) {};

// `unreachable` can be used to assert no errors occur
// const foo = never_throws_an_error() catch unreachable;
 