// Integers in Zig are just like in any other language... Right?

const std = @import("std");

pub fn main() anyerror!void {

    // Well, it looks like the usual suspects are definitely here...
    const a: u8 = 1;
    const b: i32 = 10;
    const c: u64 = 100;
    const d: isize = 1_000;

    // But wait a second... Are those 42-bit and 69-bit integers? Yes they are! Zig
    // supports arbitrary bit widths for integers.
    const e: i42 = 10_000;
    const f: u69 = 100_000;

    // Zig also provides a type for compile-time known integers.
    // The `comptime_int` type has no size limit and is the default type for
    // integer literals and Unicode code point literals.
    const g: comptime_int = 1_000_000;
    const h = 10_000_000;
    const i = '💯';

    std.debug.print("{}\n", .{a});
    std.debug.print("{}\n", .{b});
    std.debug.print("{}\n", .{c});
    std.debug.print("{}\n", .{d});
    std.debug.print("{}\n", .{e});
    std.debug.print("{}\n", .{f});
    std.debug.print("{}\n", .{g});
    std.debug.print("{}\n", .{h});
    std.debug.print("{}\n", .{i});
}
