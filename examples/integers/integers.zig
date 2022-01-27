// Zig integers are just like integers in any other language... Sort of.

const std = @import("std");

pub fn main() anyerror!void {

    // You have the usual integer types.
    _ = u8;
    _ = i32;
    _ = u64;
    _ = isize;

    // But then you also have arbitrary bit-width integers!
    _ = i5;
    _ = u42;

    // Additionally, Zig supports compile-time known integers. These integers
    // have no size limit and are written as either integer literals or Unicode
    // code point literals.
    _ = comptime_int;
    std.debug.print("integer literal: {}\n", .{1_000});
    std.debug.print("unicode literal: {}\n", .{'💯'});
}
