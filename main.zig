const print = @import("std").debug.print;

pub fn main() void {
    const greeitng = "Hello World";
    print("{s}\n", .{greeitng});
}
