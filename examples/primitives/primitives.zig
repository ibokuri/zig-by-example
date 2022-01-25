// Zig provides a number of primitive types for you to use.
// Here are a few examples.

const std = @import("std");

pub fn main() anyerror!void {

    // Booleans.
    std.debug.print("{}\n", .{true and false});
    std.debug.print("{}\n", .{true or false});

    // Integers and floats.
    std.debug.print("{}\n", .{1 + 1});
    std.debug.print("{}\n", .{1.0 / 2.0});

    // And here's one that might surprise you: `type`! In Zig, types can be
    // used as values, hence why they have their own type. This means that we
    // can do things like pass around types as function arguments.
    std.debug.print("{}\n", .{type});
    std.debug.print("{}\n", .{bool});
    std.debug.print("{}\n", .{i32});
    std.debug.print("{}\n", .{f32});
}
