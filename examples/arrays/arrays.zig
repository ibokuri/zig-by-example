// _Arrays_ are fixed-size, sequential collections of elements of the same
// type.

const std = @import("std");
const print = std.debug.print;

pub fn main() anyerror!void {

    // Here, we define an array using the _array literal_ syntax.
    const a = [3]i32{ 1, 2, 3 };

    // Here, we define an array with a size of `_`. This tells the compiler
    // to infer the array's size for us (in this case, `3`).
    const b = [_]i32{ 4, 5, 6 };

    // Here, we define an array using an _anonymous list literal_. The value on
    // the right-hand side will coerce to the array type specified on the
    // left-hand side.
    const c: [3]i32 = .{ 7, 8, 9 };

    // To access the elements of an array, use the `[N]` syntax, where `N` is
    // the position of the element (starting from 0).
    var d: [3]i32 = undefined;
    d[0] = 10;
    d[1] = 11;
    d[2] = 12;

    // Every array has a `len` field that stores the array's size.
    print("len: {}\n", .{c.len});

    // If an array is compile-time known, it can be repeated.
    print("repeat: {any}\n", .{a ** 2});

    // If two arrays are compile-time known, they can be concatenated.
    print("concat: {any}\n", .{a ++ b});

    // To iterate over an array, you can use a <a
    // href="https://zig-by-example.com/for">For loop</a>.
    for (d) |elem| {
        print("elem: {}\n", .{elem});
    }
}
