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

    // With slices, however, you can iterate by reference by prefixing the
    // payload's name with a `*`. This turns the payload value into a pointer
    // and enables modification.
    for (&array) |*ptr| {
        ptr.* += 100;
        print("by ref: {}\n", .{ptr.*});
    }

    // You can iterate over multiple values, so long as they all have the same
    // length.
    for (array, &array) |val, *ref| {
        _ = val;
        _ = ref;
    }

    // You may also specify a _range_ with the `START..END` syntax. Note that
    // `END` can be omitted if another sequence is being iterated over as well.
    // The compiler will infer its value.
    for (0.., array) |i, elem| {
        print("{}: {}\n", .{ i, elem });
    }

    // To ignore a for loop's payload, use `_`.
    for (array) |_| {}
}
