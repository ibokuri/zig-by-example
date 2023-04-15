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

    // To create an uninitialized constant or variable, assign `undefined`
    // to it. Note that this requires type annotations.
    const undefined_c: bool = undefined;
    var undefined_v: bool = undefined;

    // Assignments can also be used to ignore expressions.
    _ = c;
    _ = inferred_c;
    _ = inferred_v;
    _ = undefined_c;
    _ = undefined_v;
}
