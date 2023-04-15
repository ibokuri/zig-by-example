// A _slice_ is a pointer that references a contiguous subset of elements in a
// sequence.

const std = @import("std");
const print = std.debug.print;

// The easiest way to understand slices is to think of them as a pointer plus
// an index. The pointer tells you where the slice begins and the index tells
// you where the slice ends.
const Slice = []bool;

pub fn main() anyerror!void {

    // Slices are made with the syntax: `[start..idx]`. Here, `slice`
    // starts at `array[0]` and ends just before `array[3]`.
    var idx: usize = 3;
    var array = [5]i32{ 1, 2, 3, 4, 5 };
    var slice = array[0..idx];

    // Even though slices are pointers, you can essentially treat them like
    // arrays. You can access their length, index into them, and iterate over
    // them.
    print("length: {}\n", .{slice.len});
    print("access: {}\n", .{slice[0]});
    for (slice) |elem| {
        print("elem: {}\n", .{elem});
    }

    // Now, you might think that `ptr` here is a slice. But it is not!
    // Rather, it is a pointer to an array of three `i32` values.
    // The difference is that `ptr` sliced `array` using only compile-time
    // known values, while `slice` used a runtime-known value.
    var ptr = array[0..3];
    print("type: {}\n", .{@TypeOf(ptr)});

    // That being said, they're more or less the same in practice.
    print("length: {}\n", .{ptr.len});
    print("access: {}\n", .{ptr[0]});
    for (ptr) |elem| {
        print("elem: {}\n", .{elem});
    }
}
