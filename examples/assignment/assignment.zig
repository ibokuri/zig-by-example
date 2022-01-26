// In Zig, values may be assigned to constants or variables.

const std = @import("std");

pub fn main() anyerror!void {

    // Here, we assign the value `true` to the `bool` constant `c`.
    const c: bool = true;

    // Here, we assign the value `false` to the `bool` variable `v`.
    // Afterwards, we re-assign `v`'s value to `true`.
    var v: bool = false;
    v = true;

    // Note that in most cases, you can omit type annotations.
    const inferred_c = true;
    var inferred_v = true;

    std.debug.print("{}\n", .{c});
    std.debug.print("{}\n", .{v});
    std.debug.print("{}\n", .{inferred_c});
    std.debug.print("{}\n", .{inferred_v});
}
