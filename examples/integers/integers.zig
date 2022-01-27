// Zig integers are just like integers in any other language... Sort of.

const std = @import("std");

// There are the usual integer types...
const a: u8 = 1;
const b: i32 = 10;
const c: i64 = 100;
const d: usize = 1_000;

// But there are also arbitrary bit-width integers!
const e: i42 = 10_000;
const f: u69 = 100_000;

// Additionally, Zig supports compile-time known integers. These integers have
// no size limit and can be written as either integer literals or Unicode code
// point literals.
const g: comptime_int = 1_000_000;
const integer_literal = 10_000_000;
const unicode_literal = '💯';

pub fn main() anyerror!void {
    std.debug.print("{}\n", .{unicode_literal});
    std.debug.print("{u}\n", .{unicode_literal});
}
