// In Zig, an _array_ is a fixed-size, sequential collection of elements of the
// same type.

const std = @import("std");

pub fn main() anyerror!void {

    // To create an array, you can use an _array literal_. Doing so
    // allows the compiler to infer its size if it is specified as `_`.
    const a = [3]i32{ 1, 2, 3 };
    const b = [_]i32{ 4, 5, 6 };

    // Another approach is to use an _anonymous list literal_. Here, the
    // anonymous list literal on the right-hand side coerces to the array type
    // specified in the type annotation.
    const c: [3]i32 = .{ 7, 8, 9 };

    // To see the size of an array, access its `len` field.
    std.debug.print("{}\n", .{c.len});

    // If two arrays are compile-time known, you can concatenate and repeat
    // them.
    std.debug.print("{any}\n", .{a ++ b});
    std.debug.print("{any}\n", .{[_]i32{0} ** 6});

    // To access an element of an array, use the `[N]` syntax.
    var d: [3]i32 = undefined;
    d[0] = 10;
    d[1] = 11;
    d[2] = 12;

    // To iterate over an array, you can use a `for` loop.
    for (d) |elem| {
        std.debug.print("{}\n", .{elem});
    }
}
