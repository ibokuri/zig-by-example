// Zig provides a number of primitive types for you to use.
// Here are a few examples.

const std = @import("std");

pub fn main() anyerror!void {

    // Booleans.
    std.debug.print("{}\n", .{bool});

    // Floats.
    std.debug.print("{}\n", .{f32});
    std.debug.print("{}\n", .{comptime_float});

    // Integers, which may have arbitrary bit widths.
    std.debug.print("{}\n", .{i5});
    std.debug.print("{}\n", .{comptime_int});

    // And here's one that may surprise you: `type`! In Zig, types can be used
    // as values, hence why they have their own type. In fact, we've been using
    // types as function arguments for `std.debug.print` for a while now.
    std.debug.print("{}\n", .{type});
}
