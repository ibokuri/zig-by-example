// Zig floating-points are more or less what you'd expect.

const std = @import("std");

pub fn main() anyerror!void {

    // You have your usual floating-point types.
    _ = f16;
    _ = f32;
    _ = f64;
    _ = f128;

    // And a type for compile-time known floating-point values. These have no
    // size limit and are written as float literals.
    _ = comptime_float;
    std.debug.print("float literal: {}\n", .{3.14});
}
