// In Zig, values can be assigned to _constants_ or _variables_.

const std = @import("std");

pub fn main() anyerror!void {

    // Here, we assign the value `true` to the `bool` constant `c`.
    // Constants are immutable, so the value of `c` cannot change.
    const c: bool = true;

    // Here, we assign the value `false` to the `bool` variable `v`.
    // Variables are mutable, so the value of `v` can be re-assigned.
    var v: bool = false;
    v = true;

    // Note that the compiler can often infer types for you.
    const inferred_c = true;
    var inferred_v = true;

    std.debug.print("{}\n", .{c});
    std.debug.print("{}\n", .{v});
    std.debug.print("{}\n", .{inferred_c});
    std.debug.print("{}\n", .{inferred_v});

    // To create an uninitialized constant or variable, you assign the
    // `undefined` value to it.
    const undefined_c: bool = undefined;
    var undefined_v: bool = undefined;

    // An assignment can also be used to ignore expressions. Here, we use it to
    // reference our previous declarations.
    _ = undefined_c;
    _ = undefined_v;
}
