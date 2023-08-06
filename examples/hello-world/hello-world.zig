// To start, we'll print the classic "Hello, World!" message.
const std = @import("std");

pub fn main() !void {
    std.debug.print("Hello, World!\n", .{});
}
