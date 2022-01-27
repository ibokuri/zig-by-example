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

    // If you want to create an uninitialized constant or variable, you must
    // use the `undefined` value.
    const undefined_c: bool = undefined;
    var undefined_v: bool = undefined;

    // An assignment can also be used to ignore expressions. Here, we use it to
    // reference our previous declarations.
    _ = undefined_c;
    _ = undefined_v;
}
