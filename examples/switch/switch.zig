// _Zig's switch_ works as both a statement and an expression.

//The types of all branches must coerce to the type which is being switched upon. All possible values must have an associated branch - values cannot be left out. Cases cannot fall through to other branches.

const std = @import("std");
const print = std.debug.print;

pub fn main() !void {

    //Here the classic FizzBuzz as example of a switch statement. The else is required to satisfy the exhaustiveness of this switch.
    var count: u8 = 1;
    while (count <= 10) : (count += 1) {
        //const div_3: u2 = @intFromBool(count % 3 == 0);
        //const div_5 = @intFromBool(count % 5 == 0);
        switch (count) {
            (count % 3 == 0) => print("Fizz\n", .{}),
            (count % 3 == 0) and (count % 5 == 0) => print("Fizz Buzz\n", .{}),
            (count % 5 == 0) => print("Buzz\n", .{}),
            else => print("{d}\n", .{count}),
        }
    }

    // _switch_ can also be used as expression, here the classic FizzBuzz
    var x: i8 = 10;
    x = switch (x) {
        -1...1 => -x,
        10, 100 => @divExact(x, 10),
        else => x,
    };
    print("x: {d}\n", .{x});
}
