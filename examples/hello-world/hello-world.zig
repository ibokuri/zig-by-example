// To kick things off, let's print the classic
// "Hello, World!" message.
const std = @import("std");

pub fn main() anyerror!void {
    std.debug.print("Hello, World!\n", .{});
}
