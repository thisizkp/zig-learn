const std = @import("std");

pub fn main() void {
    // arrays are denoted by [N]T, where [N] is the number of elements in the array
    // T is the type
    const arr = [5]u32{2, 4, 8, 16, 32};

    // [_] can be used to infer the size of the Array.
    const str_arr = [_]u8{'h', 'e', 'l', 'l', 'o'};

    // array.len gives us the length of the array
    const arr_len = arr.len;
    const str_arr_len = str_arr.len;

    std.debug.print("arr len is {}, str_arr_len is {}", .{arr_len, str_arr_len});
}