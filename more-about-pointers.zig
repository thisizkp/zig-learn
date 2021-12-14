const expect = @import("std").testing.expect;

// many item pointers
// [*]T
// supports indexing, pointer arithmetic
// can't point to a type of unknown size, casts to [*]T


// pointer sized integers
test "sized pointer integers" {
    try expect(@sizeOf(usize) == @sizeOf(*u32));
    try expect(@sizeOf(isize) == @sizeOf(*i8));
}