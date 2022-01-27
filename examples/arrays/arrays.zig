// In Zig, an _array_ is a fixed-size, sequential collection of elements of the
// same type.

const std = @import("std");

pub fn main() anyerror!void {

    // One way to create an array is by using an _array literal_. The compiler
    // can infer its size if you specify it as `_`.
    const a = [3]i8{ 1, 2, 3 };
    const b = [_]i8{ 4, 5, 6 };

    // Another way to make arrays is to use _anonymous list literals_.
    const c: [3]i8 = .{ 7, 8, 9 };

    // All arrays have a `len` field, allowing you to see their size.
    std.debug.print("{}\n", .{c.len});

    // If two arrays are compile-time known, you can concatenate and repeat
    // them.
    std.debug.print("{any}\n", .{a ++ b});
    std.debug.print("{any}\n", .{[_]i8{0} ** a});
}
