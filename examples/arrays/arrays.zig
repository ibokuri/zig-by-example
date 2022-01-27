// In Zig, an _array_ is a fixed-size, sequential collection of elements of the
// same type.

const std = @import("std");

pub fn main() anyerror!void {

    // One way to create an array is by using an _array literal_. The compiler
    // can infer its size if you specify it as `_`.
    const a = [3]i32{ 1, 2, 3 };
    const b = [_]i32{ 4, 5, 6 };

    // Another way to create an array is by using _anonymous list literals_.
    const c: [3]i32 = .{ 7, 8, 9 };

    // All arrays have a `len` field, allowing you to see their size.
    std.debug.print("{}\n", .{c.len});

    // You can concatenate and repeat arrays if they are both compile-time
    // known.
    std.debug.print("{any}\n", .{a ++ b});
    std.debug.print("{any}\n", .{[_]i32{0} ** 6});
}
