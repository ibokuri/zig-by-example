// An _array_ is a fixed-size, sequential collection of elements of the
// same type.

const std = @import("std");

pub fn main() anyerror!void {

    // To make an array, you can use an _array literal_. The compiler
    // will infer the array's size if it is specified as `_`.
    const a = [3]i32{ 1, 2, 3 };
    const b = [_]i32{ 4, 5, 6 };

    // You can also use an _anonymous list literal_. Here, the value on the
    // right-hand side coerces to the array type specified on the left-hand
    // side.
    const c: [3]i32 = .{ 7, 8, 9 };

    // Every array has a `len` field that stores the array's size.
    std.debug.print("{}\n", .{c.len});

    // If an array is compile-time known, it can be repeated.
    std.debug.print("{any}\n", .{[_]i32{0} ** 6});

    // If two arrays are compile-time known, they can be concatenated.
    std.debug.print("{any}\n", .{a ++ b});

    // To access an element of an array, use the `[N]` syntax, where `N` is the position of the element (starting from 0).
    var d: [3]i32 = undefined;
    d[0] = 10;
    d[1] = 11;
    d[2] = 12;

    // To iterate over an array, you can use a `for` loop.
    for (d) |elem| {
        std.debug.print("{}\n", .{elem});
    }
}
