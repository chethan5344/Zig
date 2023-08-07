const print = @import("std").debug.print;
const rightShift = @import("./Rshift.zig");

pub fn main() void {
    const greeitng = "Hello World";
    print("{s}\n", .{greeitng});
    const c = rightShift.rShift(1, 2);
    print("{}\n", .{c});
}
