const expect = @import("std").testing.expect;

// ordinal values start at 0
const Directions = enum { 
    // can have namespaced var or const
    // unattached to the instance of enum type
    var time_called_is_east: u32 = 10;

    north, 
    south, 
    east, 
    west,
    
    // methods can be given to an enum
    pub fn isEast(self: Directions) bool {
        Directions.time_called_is_east += 1;
        return self == Directions.east;
    }
};

// can have specified (integer) tag types
const Money = enum(u32) {
    rupee = 1,
    ten = 10,
    twenty = 20,
    fifty = 50,
    hundred = 100,
    next // 101
};

test "Directions" {
    try expect(Directions.time_called_is_east == 10);
    try expect(@enumToInt(Directions.north) == 0);
    try expect(Directions.isEast(Directions.south) == false);
    try expect(Directions.isEast(Directions.east) == true);
    try expect(Directions.time_called_is_east == 12);
}

test "Money" {
    try expect(@enumToInt(Money.rupee) == 1);
    try expect(@enumToInt(Money.hundred) == 100);
    try expect(@enumToInt(Money.next) == 101);
}