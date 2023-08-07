// _Pointers_ are objects that store a memory address.

const std = @import("std");
const print = std.debug.print;

// _Single-item pointers_ point to exactly one value.
const Single = *bool;

// _Many-item pointers_ point to an unknown number of values. Unless you're
// interfacing with C code, you probably won't use these types of pointers, so
// we'll skip over them.
const Many = [*]bool;

// All pointers in Zig point to a non-`null` value. To define a `null` pointer,
// you must make the pointer type
// <a href="https://zig-by-example.com/optionals">optional</a>.
const Null = ?*bool;

pub fn main() !void {

    // To create a single-item pointer, use the `&` operator.
    var value = false;
    var ptr: *bool = &value;
    print("pointer: {}\n", .{ptr});

    // To access the value located at the memory address stored by a
    // single-item pointer, use the `*` operator.
    ptr.* = true;
    print("value: {}\n", .{ptr.*});

    // If a pointer is `const`, its pointee cannot be re-assigned.
    const const_ptr: *bool = &value;

    // If a pointee is `const`, its pointer type will reflect that. Naturally,
    // the value of `const` pointees cannot be modified.
    const const_value = true;
    var ptr_to_const: *const bool = &const_value;

    _ = ptr_to_const;
    _ = const_ptr;
}
