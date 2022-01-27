// In Zig, values may be assigned to constants or variables.

const std = @import("std");

pub fn main() anyerror!void {

    // Here, we assign the value `true` to the `bool` constant `c`.
    const c: bool = true;

    // Here, we assign the value `false` to the `bool` variable `v`.
    // Afterwards, we re-assign `v`'s value to `true`.
    var v: bool = false;
    v = true;

    // For convenience, you may omit type annotations during assignment, and
    // the complier will infer the type for you.
    const inferred_c = true;
    var inferred_v = true;

    std.debug.print("{}\n", .{c});
    std.debug.print("{}\n", .{v});
    std.debug.print("{}\n", .{inferred_c});
    std.debug.print("{}\n", .{inferred_v});

    // To leave a constant or variable uninitialized, assign it the value
    // `undefined`. Note that type annotations are required here because the
    // compiler has no hints about the type of the constant or variable.
    const undefined_c: bool = undefined;
    var undefined_v: bool = undefined;

    // An assignment can also be used to ignore expressions. Here, we use it
    // to reference, but not use, `undefined_c` and `undefined_v`.
    _ = undefined_c;
    _ = undefined_v;
}
