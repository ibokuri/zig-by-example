// In Zig, values may be assigned to constants or variables.

const std = @import("std");

pub fn main() anyerror!void {

    // Here, we assign the value `true` to the `bool` constant `c`.
    const c: bool = true;

    // Here, we assign the value `false` to the `bool` variable `v`.
    // Afterwards, we re-assign `v`'s value to `true`.
    var v: bool = false;
    v = true;

    // Often times, the compiler is able to infer types for you.
    const inferred_c = true;
    var inferred_v = true;

    std.debug.print("{}\n", .{c});
    std.debug.print("{}\n", .{v});
    std.debug.print("{}\n", .{inferred_c});
    std.debug.print("{}\n", .{inferred_v});

    // The `undefined` value can be used to create uninitialized constants or
    // variables. Note that type annotations are required here since the
    // compiler has no type hints.
    const undefined_c: bool = undefined;
    var undefined_v: bool = undefined;

    // Assignments can also be used to ignore expressions. For example, we use
    // it here to reference, but not use, `undefined_c` and `undefined_v`.
    _ = undefined_c;
    _ = undefined_v;
}
