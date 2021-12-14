const expect = @import("std").testing.expect;

// x is a pointer, pointing to a value of type u32
fn addOne(x: *u32) void {
    // dereferencing operator .*
    x.* += 1;
}

test "pointers" {
    var y: u32 = 20;
    // pass the reference
    addOne(&y);
    try expect(y == 21);
}

test "dirty pointers" {
    var x: u32 = 0;
    var y: *u32 = &x;
    try expect(y.* == 0);

    // pointers can't be pointing to a null
    // it fails because casting causes pointer to be null
    var z: *u8 = @intToPtr(*u8, x);
    try expect(z.* == 0);
}

test "const pointers" {
    const x: u32 = 10;
    var y = &x;
    
    // references a constant, so can't be mutated
    y.* += 1;
    try expect(y == 11);
}