// _If statements_ accept bool values (i.e. true or false).

const std = @import("std");
const print = std.debug.print;

pub fn main() !void {

    // Here we assign _a_ as _true_ to be validated further and use _x_.
    const a: bool = true;
    var x: u16 = 0;

    // Unlike languages like C or Javascript, there are no values that implicitly coerce to bool values, but the parentheses _(...)_ are always required.
    if (a) {
        x += 1;
    } else {
        x += 2;
    }

    // Here we use a boolean expression to evaluate _x_.
    print("x = 1? {}\n", .{x == 1});

    // If statements also work as expressions.
    x += if (a) 1 else 2;
    print("x now is: {d}\n", .{x});
}
