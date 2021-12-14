const expect = @import("std").testing.expect;

test "defer" {
    var x: u32 = 10;
    {
        // the following line will be executed at the end of the block
        defer x += 2;
        try expect(x == 10);
    }
    try expect(x == 12);
}

test "multi defer" {
    var x: u32 = 16;
    {
        // when multiple defers are present,
        // they are executed in reverse order
        // x *= 3 will be executed first then x += 10
        defer x += 10;
        defer x *= 3;
    }
    try expect(x == 58);
}