// Zig supports two kinds of pointers: _single-item pointers_ and _many-item
// pointers_.

const std = @import("std");

// Single-item pointers point to a single memory address.
const SingleItemPointer = *bool;

// Many-item pointers point to an unknown number of memory addresses. They're
// mostly used when interfacing with C code (e.g., C arrays), so we won't discuss
// them here.
const ManyItemPointer = [*]bool;

pub fn main() anyerror!void {
    var value = true;

    // To get a single-item pointer from a value, use `&`.
    const pointer: *bool = &value;
    std.debug.print("{}\n", .{pointer});

    // To access the value pointed to by a single-item pointer, dereference the
    // pointer using the `*` operator.
    std.debug.print("{}\n", .{pointer.*});
    pointer.* = false;
    std.debug.print("{}\n", .{pointer.*});
}
