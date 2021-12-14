const expect = @import("std").testing.expect;

fn addFive(x: u32) u32 {
    return x + 5;
}

test "function" {
    const y = addFive(0);
    try expect(@TypeOf(y) == u32);
    try expect(y == 5);
}

fn fibonacci(x: u32) u32 {
    if (x == 0 or x == 1) return x;
    return fibonacci(x - 1) + fibonacci(x - 2);
}

test "fibonacci" {
    const y = fibonacci(10);
    try expect(y == 55);
}