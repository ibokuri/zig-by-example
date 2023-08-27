// _While_ loops can be used to repeat expressions.

const std = @import("std");
const print = std.debug.print;

pub fn main() !void {
    var a: usize = 0;
    var b: usize = 0;
    var c: usize = 0;
    var d: usize = 0;

    // The body of a while loop will repeatedly execute until the loop's
    // condition is no longer true.
    while (a < 2) {
        print("a: {}\n", .{a});
        a += 1;
    }

    // _Continue expressions_ can be used to evaluate an expression after each
    // execution of a while loop's body.
    while (b < 2) : (b += 1) {
        print("b: {}\n", .{b});
    }

    // You can specify multiple continue expressions by using the `{ <expr1>; <expr2>; ... }` syntax.
    while (c < 4) : ({
        c += 1;
        c += 1;
    }) {
        print("c: {}\n", .{c});
    }

    // To break out of a while loop, use the `break` keyword.
    while (true) {
        break;
    }

    // To jump to the next iteration of a while loop, use the `continue`
    // keyword.
    while (true) : (d += 1) {
        if (d < 2) {
            print("d: {}\n", .{d});
            continue;
        }

        break;
    }
}
