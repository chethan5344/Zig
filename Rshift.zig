const print = @import("std").debug.print;

pub fn rShift(a: i8, b: u3) i8 {
    print("{}\n", .{@TypeOf(a)});
    return a << b;
}
