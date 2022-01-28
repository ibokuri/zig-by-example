// _Floating-points_, unlike integers, are relatively normal.

const std = @import("std");

// You have your usual suspects...
const a: f16 = 1.0;
const b: f32 = 100.0;
const c: f64 = 1_000.0;
const d: f128 = 10_000.0;

// And a type for compile-time known floating-point values. These have no
// size limit and are written as float literals.
const e: comptime_float = 100_000.0;
const float_literal = 1_000_000.0;

pub fn main() anyerror!void {
    std.debug.print("{}\n", .{float_literal});
}
