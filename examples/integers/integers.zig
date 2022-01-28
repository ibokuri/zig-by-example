// In Zig, _integers_ have arbitrary bit widths.

const std = @import("std");

// There's the usual integer types...
const a: u8 = 1;
const b: i32 = 10;
const c: i64 = 100;
const d: usize = 1_000;

// But there's also things like 42- and 55-bit integers!
const e: i42 = 10_000;
const f: u55 = 100_000;

// Additionally, Zig supports compile-time known integers. These integers have
// no size limit and can be written as integer literals or Unicode code point
// literals.
const g: comptime_int = 1_000_000;
const integer_literal = 10_000_000;
const unicode_literal = '💯';

pub fn main() anyerror!void {
    std.debug.print("{}\n", .{unicode_literal});
    std.debug.print("{u}\n", .{unicode_literal});
}
