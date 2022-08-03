// To repeat an expression in Zig, _while_ loops can be used.

const std = @import("std");
const print = std.debug.print;

pub fn main() anyerror!void {

    // The body of a while loop will repeatedly execute until the while loop's
    // condition is no longer true.
    var i: usize = 0;
    while (i < 2) {
        print("i: {}\n", .{i});
        i += 1;
    }

    // While loops support _continue expressions_, which are evaluated each
    // time the loop's body is executed.
    var j: usize = 0;
    while (j < 2) : (j += 1) {
        print("j: {}\n", .{j});
    }

    // To break out of a while loop, use the `break` keyword.
    while (true) {
        break;
    }

    // To jump to the next iteration of a while loop, use the `continue`
    // keyword.
    var k: usize = 0;
    while (true) : (k += 1) {
        if (k < 2) {
            print("k: {}\n", .{k});
            continue;
        }

        break;
    }
}
