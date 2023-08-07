// _Integers_ in Zig can have arbitrary bit-widths.

const std = @import("std");
const print = std.debug.print;

// Here, we define some common integer types.
const a: u8 = 1;
const b: i32 = 10;
const c: i64 = 100;
const d: isize = 1_000;

// Here, we define some not so common integer types.
const e: u21 = 10_000;
const f: i42 = 100_000;

// Here, we define some _compile-time_ known integers. These have no size limit
// and can be written as either integer literals or Unicode code point
// literals.
const g: comptime_int = 1_000_000;
const h = 10_000_000;
const i = '💯';

pub fn main() anyerror!void {
    print("integer: {d}\n", .{i});
    print("unicode: {u}\n", .{i});
}
