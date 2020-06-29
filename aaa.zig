const std = @import("std");

pub fn main() !void {
    const stdout = std.io.getStdOut().outStream();
    while (true) try stdout.print("a", .{});
}
