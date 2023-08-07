// _While_ loops can be used to repeat expressions.

const std = @import("std");
const print = std.debug.print;

pub fn main() anyerror!void {
    var i: usize = 0;
    var j: usize = 0;
    var k: usize = 0;

    // The body of a while loop will repeatedly execute until the loop's
    // condition is no longer true.
    while (i < 2) {
        print("i: {}\n", .{i});
        i += 1;
    }

    // _Continue expressions_ can be specified to evaluate an expression after
    // each execution of a while loop's body.
    while (j < 2) : (j += 1) {
        print("j: {}\n", .{j});
    }

    // To break out of a while loop, use the `break` keyword.
    while (true) {
        break;
    }

    // To jump to the next iteration of a while loop, use the `continue`
    // keyword.
    while (true) : (k += 1) {
        if (k < 2) {
            print("k: {}\n", .{k});
            continue;
        }

        break;
    }
}
