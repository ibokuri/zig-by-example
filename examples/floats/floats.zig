// Zig floating-points are more or less what you'd expect.

const std = @import("std");

pub fn main() anyerror!void {

    // You have your usual types.
    const a: f16 = 1.0;
    const b: f32 = 100.0;
    const c: f64 = 1_000.0;
    const d: f128 = 10_000.0;

    // As well as compile-time known floats
    // (i.e., float literals).
    const e: comptime_float = 100_000.0;
    const f = 1_000_000.0;

    std.debug.print("{}\n", .{a});
    std.debug.print("{}\n", .{b});
    std.debug.print("{}\n", .{c});
    std.debug.print("{}\n", .{d});
    std.debug.print("{}\n", .{e});
    std.debug.print("{}\n", .{f});
}
