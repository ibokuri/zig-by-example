// _For loops_ allow you to iterate over an array, slice, or tuple.

const std = @import("std");
const print = std.debug.print;

pub fn main() anyerror!void {
    var array = [_]u32{ 1, 2, 3 };

    // By default, for loops iterate by value, meaning that you cannot modify
    // the loop's payload (in this case, `elem`).
    for (array) |elem| {
        print("by val: {}\n", .{elem});
    }

    // To iterate by reference, prefix the payload's name with a `*`. This will
    // let you modify the captured value.
    for (&array) |*elem| {
        elem.* *= 10;
        print("by ref: {}\n", .{elem.*});
    }

    // To ignore a for loop's payload, use `_`.
    for (array) |_| {}

    // To access a for loop's index, use the `|PAYLOAD, INDEX|` syntax.
    for (array, 0..) |elem, i| {
        print("{}: {}\n", .{ i, elem });
    }
}
