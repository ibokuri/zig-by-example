// _Slices_ are a special kind of pointer that reference a contiguous subset of
// elements in a sequence.

const std = @import("std");
const print = std.debug.print;

// The easiest way to understand slices is to think of them as a single-item
// pointer plus a length. The pointer tells you where the slice begins and the
// length tells you its size.
const Slice = []bool;

pub fn main() !void {

    // Here, we define a slice using the `[start..end]` syntax.
    // `slice` begins at `array[1]` and ends just before `array[4]`.
    var array = [5]i32{ 1, 2, 3, 4, 5 };
    var end: usize = 4;
    var slice = array[1..end];

    // Functionally, slices are very similar to arrays. You can see their
    // length, index into them, and iterate over them.
    print("len: {}\n", .{slice.len});
    print("first: {}\n", .{slice[0]});
    for (slice) |elem| {
        print("elem: {}\n", .{elem});
    }

    // All slices _must_ have a runtime-known length. If their lengths are
    // compile-time known, the compiler will convert the slice into a
    // single-item array pointer for us.
    var ptr: *[3]i32 = array[1..4];

    // In practice, single-item array pointers work just like slices.
    print("len: {}\n", .{ptr.len});
    print("first: {}\n", .{ptr[0]});
    for (ptr) |elem| {
        print("elem: {}\n", .{elem});
    }
}
