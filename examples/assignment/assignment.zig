// In Zig, values can be assigned to _constants_ or _variables_.

const std = @import("std");

pub fn main() anyerror!void {

    // Here, we assign the value `true` to the `bool` constant `c`.
    // Constants are immutable, so the value of `c` _cannot_ change.
    const c: bool = true;

    // Here, we assign the value `false` to the `bool` variable `v`.
    // Variables are mutable, so the value of `v` _can_ change.
    var v: bool = false;
    v = true;

    // Note that the compiler can often infer types for you.
    const inferred = true;

    // To create an uninitialized constant or variable, assign `undefined`
    // to it. Using undefined values will result in either a crash or undefined
    // behavior, so be careful!
    var u: bool = undefined;
    u = true;

    // Assignments can also be used to ignore expressions.
    _ = c;
    _ = inferred;
}
