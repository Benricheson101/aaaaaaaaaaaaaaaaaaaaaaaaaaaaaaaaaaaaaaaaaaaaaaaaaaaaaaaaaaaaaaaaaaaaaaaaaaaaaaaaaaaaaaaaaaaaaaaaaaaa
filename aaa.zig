const debug = @import("std").debug;

pub fn main() void {
    while (true) debug.warn("a", .{});
}
