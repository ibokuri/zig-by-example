// Integers in Zig are just like integers in other languages... Sort of.

const std = @import("std");

pub fn main() anyerror!void {

    // We have the usual suspects.
    const a: u8 = 1;
    const b: i32 = 10;
    const c: u64 = 100;
    const d: isize = 1_000;

    // But we also have arbitrary bit-width integers!
    const e: i42 = 10_000;
    const f: u69 = 100_000;

    // Not only that, Zig also has compile-time known integers. These integers
    // have no size limit and are written as either integer literals or Unicode
    // code point literals.
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
