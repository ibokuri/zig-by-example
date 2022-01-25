// There are two ways to store values in Zig: constants and variables.
const std = @import("std");

pub fn main() anyerror!void {

    // Here, we assign the value `true` to the identifier `constant`.
    // Identifiers are always immutable, meaning that you cannot re-assign an
    // identifier's value after it is created.
    const constant = true;

    // Here, we assign the value `false` to the variable `variable`. As their
    // name suggests, variables can change, meaning that we can re-assign
    // `variable`'s value to `true`.
    var variable = false;
    variable = true;

    std.debug.print("{}\n", .{constant});
    std.debug.print("{}\n", .{variable});
}
