const expect = @import("std").testing.expect;

test "while" {
    var i: u32 = 2;
    while (i < 1000) {
        i *= 2;
    }
    try expect(i == 1024);
}

test "while with continue expression" {
    var i: u32 = 1;
    var sum: u32 = 0;

    while (i <= 10) : (i += 1) {
        sum += i;
    }
    try expect(sum == 55);
}

test "while with continue" {
    var i: u32 = 1;
    var sum: u32 = 0;

    while (i <= 10) : (i += 1) {
        if (i == 5) continue;
        sum += i;
    }
    try expect(sum == 50);
}

test "while with break" {
    var i: u32 = 1;
    var sum: u32 = 0;

    while (i <= 10) : (i += 1) {
        if (i == 5) continue;
        if (i == 7) break;
        sum += i;
    }
    try expect(sum == 16);
}