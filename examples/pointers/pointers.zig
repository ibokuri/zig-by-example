// In Zig, a _pointer_ is an object that stores a memory address. Zig provides
// two types of pointers: single- and many-item. Both types of pointers are
// guaranteed to point to a value.

const std = @import("std");

// Single-item pointers point to a single memory address.
const SingleItemPointer = *bool;

// Many-item pointers point to an unknown number of memory addresses. They're
// mostly used when interfacing with C code (e.g., C arrays), so we won't discuss
// them here.
const ManyItemPointer = [*]bool;

pub fn main() anyerror!void {

    // To create a single-item pointer from a value, use `&`.
    var value = true;
    const pointer: *bool = &value;
    std.debug.print("{}\n", .{pointer});

    // To access the value pointed to by a single-item pointer, dereference the
    // pointer using the `*` operator.
    std.debug.print("{}\n", .{pointer.*});
    pointer.* = false;
    std.debug.print("{}\n", .{pointer.*});

    // Note that if a pointed-to value is `const`, its pointer type must
    // reflect that.
    const const_value = true;
    const const_pointer: *const bool = &const_value;
    std.debug.print("{}\n", .{const_pointer});
}
