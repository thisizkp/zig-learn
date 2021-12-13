const expect = @import("std").testing.expect;

test "if statement" {
    const a = true;
    var x: i32 = 0;

    // a has to be a boolean, not just truthy/falsy value
    if (a) {
        x += 1;
    } else {
        x += 2;
    }

    try expect(x == 1);
}

test "if statement expression" {
    const a = true;
    var x: u16 = 0;

    // if expression
    x = if (a) 2 else 3;
    try expect(x == 2);
}
