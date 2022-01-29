// A _pointer_ is an object that stores a memory address. Pointers in Zig come
// in two forms: single- and many-item.

const std = @import("std");

// Single-item pointers point to exactly one value.
const Single = *bool;

// Many-item pointers point to an unknown number of values. Unless you're
// interfacing with C code, you probably won't use these types of pointers, so
// we'll skip over them.
const Many = [*]bool;

// Note that all pointers in Zig point to some non-`null` value. If you want
// `null` pointers, you'll need to use <a
// href="https://zig-by-example.com/optionals">Optionals</a>.
const Null = ?*bool;

pub fn main() anyerror!void {

    // To create a single-item pointer, you use the `&` operator. Here, `ptr`
    // is a pointer that stores `value`'s memory address.
    var value = true;
    var ptr: *bool = &value;
    std.debug.print("{}\n", .{ptr});

    // To access the value located at the memory address stored by a
    // single-item pointer, you use the `*` operator.
    std.debug.print("{}\n", .{ptr.*});
    ptr.* = false;
    std.debug.print("{}\n", .{ptr.*});

    // Note that if a value is `const`, its pointer type is also `const`.
    const const_value = true;
    var ptr_to_const: *const bool = &const_value;
    std.debug.print("{}\n", .{ptr_to_const});
}
