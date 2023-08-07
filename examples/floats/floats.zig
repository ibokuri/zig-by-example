// _Floating-points_ in Zig are similar to integers, though they cannot have
// arbitrary bit-widths.

const std = @import("std");
const print = std.debug.print;

// Here, we define some common floating types.
const a: f16 = 1.0;
const b: f32 = 100.0;
const c: f64 = 1_000.0;
const d: f128 = 10_000.0;

// Here, we define some _compile-time_ known floats. These have
// no size limit and are written as float literals.
const e: comptime_float = 100_000.0;
const f = 1_000_000.0;

pub fn main() anyerror!void {
    print("float: {}\n", .{f});
}
