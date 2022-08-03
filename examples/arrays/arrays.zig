// An _array_ is a fixed-size, sequential collection of elements of the
// same type.

const std = @import("std");
const print = std.debug.print;

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
    print("len: {}\n", .{c.len});

    // If an array is compile-time known, it can be repeated.
    print("repeat: {any}\n", .{a ** 2});

    // If two arrays are compile-time known, they can be concatenated.
    print("concat: {any}\n", .{a ++ b});

    // To access an element of an array, use the `[N]` syntax, where `N` is the
    // position of the element (starting from 0).
    var d: [3]i32 = undefined;
    d[0] = 10;
    d[1] = 11;
    d[2] = 12;

    // To iterate over an array, you can use a <a
    // href="https://zig-by-example.com/for">For loop</a>.
    for (d) |elem| {
        print("elem: {}\n", .{elem});
    }
}
