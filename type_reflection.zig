const std = @import("std");

const Point = struct {
    x: u8,
    y: u8,
    isFlag: bool
};

pub fn main() void {
    printInfoAboutStruct(Point);
}

fn printInfoAboutStruct(comptime T: type) void {
    // type reflection
    const info = @typeInfo(T);
    inline for (info.Struct.fields) |field| {
        std.debug.print(
            "{s} has a field {s} with type {s}\n",
            .{
                @typeName(T),
                field.name,
                @typeName(field.field_type)
            }
        );
    }
}