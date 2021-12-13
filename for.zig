const print = @import("std").debug.print;

pub fn main() void {
    const string = [_]u8{1, 2, 4, 8, 16};

    for (string) |character, index| {
        print("|character, index| ==> | {}, {} |\n", .{character, index});
    }

    for (string) |character| {
        print("|character| ==> {}\n", .{character});
    }

    for (string) |_, index| {
        print("|index| ==> {}\n", .{index});
    }

    for (string) |_| {
        print("Does nothing...\n", .{});
    }
}