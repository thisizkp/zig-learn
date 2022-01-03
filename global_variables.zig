// top level declarations are order independent & lazily analysed
// initialisation of global variables are evaulated at compile time

var y: i32 = add(x, 10);
const x: i32 = add(20, 10);

test "global variables" {
    assert(x == 30);
    assert(y == 40);
}

const std = @import("std");

fn add(a: i32, b: i32) i32 {
    return a + b;
}

const assert = std.debug.assert;