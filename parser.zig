const maxInt = @import("std").math.maxInt;

pub fn parser(buf: []const u8, radix: u8) !u64 {
    var x: u64 = 0;
    for (buf) |char| {
        const digit = charToDigit(char);

        if (digit >= radix) {
            return error.InvalidChar;
        }
            // @mulWithOverFlow takes the type , a, b values to be multiplied , and pointer the variable where the result to be stored 
        if (@mulWithOverflow(u64, x, radix, &x)) return error.OverFlow;
        if (@addWithOverflow(u64, x, digit, &x)) return error.OverFlow;
    }
    return x;
}

fn charToDigit(c: u8) u8 {
    return switch (c) {
        '0'...'9' => c - '0',
        'a'...'z' => c - 'a' + 10,
        'A'...'Z' => c - 'A' + 10,
        else => maxInt(u8),
    };
}
