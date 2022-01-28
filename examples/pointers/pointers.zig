// A _pointer_ is an object that stores a memory address. Zig has two types of
// pointers: single-item and many-item. Both pointer types are guaranteed to
// point to a value.

const std = @import("std");

// Single-item pointers point to a single memory address.
const Single = *bool;

// Many-item pointers point to an unknown number of memory addresses. They're
// mostly used when interfacing with C code (e.g., C arrays), so we won't discuss
// them here.
const Many = [*]bool;

pub fn main() anyerror!void {

    // To create a single-item pointer from a value, use `&`.
    var value = true;
    var ptr: *bool = &value;
    std.debug.print("{}\n", .{ptr});

    // To access the value pointed to by a single-item pointer, dereference the
    // pointer using the `*` operator.
    std.debug.print("{}\n", .{ptr.*});
    ptr.* = false;
    std.debug.print("{}\n", .{ptr.*});

    // Note that if a value is `const`, its pointer type is also `const`.
    const const_value = true;
    var ptr_to_const: *const bool = &const_value;
    std.debug.print("{}\n", .{ptr_to_const});
}
