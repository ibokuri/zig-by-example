// _Switch_ works as both a statement and an expression.

const std = @import("std");
const print = std.debug.print;

pub fn main() !void {
    var x: i8 = 10;

    // An example of a _switch_ statement. The _else_ is required to satisfy the exhaustiveness of this _switch_. All possible values must have an associated branch, values cannot be left out. Cases cannot fall through to other branches.
    switch (x) {
        -1...1 => {
            x = -x;
        },
        10, 100 => print("x: {d}\n", .{x}),
        else => {},
    }
    // Here the classic FizzBuzz exercise using a _switch_ statement.
    var count: u8 = 1;
    while (count <= 15) : (count += 1) {

        // After define _while_ to count until 15 we use _@intFromBool_ which converts true to 1 and false to 0 resulting into a u1 value (i.e. a 1 bit unsigned integer).
        const div3: u2 = @intFromBool(count % 3 == 0);

        // You may notice that we haven't given _div5_ an explicit type, this is because it is inferred from the value that is assigned to it.
        const div5 = @intFromBool(count % 5 == 0);

        // We need _u2_ to fit two booleans and perform this multiplication of _div3_, you can see the binary notation in action as result to satisfy the expression evaluated.
        // We can rewrite the _switch_ value to use bitwise operations: _switch_ _(div3 << 1 | div5)_.
        switch (div3 * 2 + div5) {
            0b10 => print("Fizz\n", .{}),
            0b01 => print("Buzz\n", .{}),
            0b11 => {
                print("Fizz", .{});
                print("Buzz\n", .{});
            },
            else => print("{d}\n", .{count}),
        }
    }

    // _switch_ can also be used as expression.
    x = switch (x) {
        -1...1 => -x,
        10, 100 => @divExact(x, 10),
        else => x,
    };
    print("x: {d}\n", .{x});
}
