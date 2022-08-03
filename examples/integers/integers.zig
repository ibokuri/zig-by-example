// _Integers_ in Zig are pretty neat.

const std = @import("std");
const print = std.debug.print;

// You have your usual integer types...
const a: u8 = 1;
const b: i32 = 10;
const c: i64 = 100;
const d: usize = 1_000;

// But you also have arbitrary bit-width integers.
const e: u21 = 10_000;
const f: i42 = 100_000;

// Additionally, Zig supports compile-time known integers. These have no size
// limit and can be written as either integer literals or Unicode code point
// literals.
const g: comptime_int = 1_000_000;
const integer_literal = 10_000_000;
const unicode_literal = '💯';

pub fn main() anyerror!void {
    print("integer: {}\n", .{unicode_literal});
    print("unicode: {u}\n", .{unicode_literal});
}
