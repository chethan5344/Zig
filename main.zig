const print = @import("std").debug.print;
const rightShift = @import("./Rshift.zig");
const parser = @import("./parser.zig");

pub fn main() !void {
    const greeitng = "Hello World";
    print("{s}\n", .{greeitng});
    const c = rightShift.rShift(1, 2);
    print("{}\n", .{c});
    const a = parser.parser("1234560", 10) catch |err| return err;
    print("{}\n", .{a});
}
