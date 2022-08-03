// A _slice_ is a pointer that references a contiguous subset of elements in a
// sequence.

const std = @import("std");

// The easiest way to understand slices is to think of them as a pointer plus a
// length. The pointer tells you where the slice begins and the length tells
// you the size of the slice.
const Slice = []bool;

pub fn main() anyerror!void {

    // Slices are made with the slicing syntax: `[start..len]`.
    // Here, `slice` points to `array[0]` and has a length of 3.
    var len: usize = 3;
    var array = [5]i32{ 1, 2, 3, 4, 5 };
    var slice = array[0..len];

    // Even though slices are pointers, you can essentially treat them like
    // arrays. You can access their length, index into them, and iterate over
    // them.
    std.debug.print("len: {}\n", .{slice.len});
    std.debug.print("first: {}\n", .{slice[0]});
    for (slice) |elem| {
        std.debug.print("elem: {}\n", .{elem});
    }

    // Note that a slice's length is always a runtime-known value. Here, we are
    // _not_ creating a slice, but rather a pointer to an array of three `i32`
    // values. The reason is because we sliced `array` using compile-time known
    // values (`comptime_int`s).
    var ptr = array[0..3];
    std.debug.print("type: {}\n", .{@TypeOf(ptr)});
}
