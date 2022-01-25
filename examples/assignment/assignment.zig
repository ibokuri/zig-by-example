// To assign a value in Zig, you have two options: constants and variables.

const std = @import("std");

pub fn main() anyerror!void {

    // Here, we assign the value `true` to the identifier `constant`.
    // Identifiers are immutable, which means you cannot change their initial
    // value.
    const constant: bool = true;

    // Here, we assign the value `false` to the variable `variable`. As their
    // name suggests, variables are mutable, meaning we can re-assign
    // `variable`'s value from `false` to `true`.
    var variable: bool = false;
    variable = true;

    // For convenience, you can omit type annotations during assignment. The
    // compiler will infer the type for you.
    const inferred_constant = true;
    var inferred_variable = true;

    std.debug.print("{}\n", .{constant});
    std.debug.print("{}\n", .{variable});
    std.debug.print("{}\n", .{inferred_constant});
    std.debug.print("{}\n", .{inferred_variable});
}
