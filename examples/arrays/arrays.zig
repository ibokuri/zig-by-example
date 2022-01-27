// In Zig, an _array_ is a fixed-size, sequential collection of elements of the
// same type.

const std = @import("std");

pub fn main() anyerror!void {

    // One way to create an array is by using an _array literal_. The compiler
    // can infer its size if you specify it as `_`.
    const a = [3]i32{ 1, 2, 3 };
    const b = [_]i32{ 4, 5, 6 };

    // Another way to create an array is by using an _anonymous list literal_.
    const c: [3]i32 = .{ 7, 8, 9 };

    // All arrays have a `len` field, allowing you to see their size.
    std.debug.print("{}\n", .{c.len});

    // To access an element of an array, you index into it.
    std.debug.print("{}\n", .{c[0]});

    // If two arrays are compile-time known, you can concatenate and repeat
    // them.
    std.debug.print("{any}\n", .{a ++ b});
    std.debug.print("{any}\n", .{[_]i32{0} ** 6});

    // To iterate over an array, a `for` loop can be used.
    for (a) |elem| {
        std.debug.print("{}\n", .{elem});
    }
}
