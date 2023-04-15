// A _pointer_ is an object that stores a memory address. There are three types
// of pointers in Zig: single-item, many-item, and <a
// href="https://zig-by-example.com/for">Slices</a>.

const std = @import("std");
const print = std.debug.print;

// Single-item pointers point to exactly one value.
const Single = *bool;

// Many-item pointers point to an unknown number of values. Unless you're
// interfacing with C code, you probably won't use these types of pointers, so
// we'll skip over them.
const Many = [*]bool;

// Note that all pointers in Zig point to a non-`null` value. To get
// `null` pointers, you need to use <a
// href="https://zig-by-example.com/optionals">Optionals</a>.
const Null = ?*bool;

pub fn main() anyerror!void {

    // To create a single-item pointer, use the `&` operator.
    var value = true;
    var ptr: *bool = &value;
    print("pointer: {}\n", .{ptr});

    // To access the value located at the memory address stored by a
    // single-item pointer, use the `*` operator.
    print("before: {}\n", .{ptr.*});
    ptr.* = false;
    print("after: {}\n", .{ptr.*});

    // Note that if a value is `const`, its pointer type is also `const`.
    const const_value = true;
    var ptr_to_const: *const bool = &const_value;
    print("pointer: {}\n", .{ptr_to_const});
}
