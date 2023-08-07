// _For loops_ can be used to iterate over sequences.

const std = @import("std");
const print = std.debug.print;

pub fn main() !void {
    var array = [_]u32{ 1, 2, 3 };

    // Here, we iterate over the contents of `array`, storing a copy of each
    // element in `elem`. Note that since `elem` is just a copy, we cannot
    // actually modify `array`'s contents like this.
    for (array) |elem| {
        print("by val: {}\n", .{elem});
    }

    // Here, we iterate over the contents of `array` _by reference_ by
    // prefixing `elem` with a `*`. This turns `elem` into a pointer, which we
    // can use to modify `array`'s contents.
    for (&array) |*elem| {
        elem.* += 100;
        print("by ref: {}\n", .{elem.*});
    }

    // You can iterate over multiple sequences, so long as they all have the
    // same length.
    for (array, &array) |val, *ref| {
        _ = val;
        _ = ref;
    }

    // You may also specify a _range_ with the `START..END` syntax. Note that
    // `END` may be omitted if another sequence is being iterated over as well;
    // the compiler will infer its size.
    for (array, 0..) |elem, i| {
        print("{}: {}\n", .{ i, elem });
    }

    // To ignore the elements of a sequence, use `_`.
    for (array) |_| {}
}
