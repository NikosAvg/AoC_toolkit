const std = @import("std");
const aoc = @import("../aoc.zig");

pub fn solve(
    allocator: std.mem.Allocator,
    input: []const u8,
) !void {
    _ = allocator;

    var it = std.mem.splitScalar(
        u8,
        input,
        '\n',
    );

    while (it.next()) |line| {
        if (line.len == 0)
            continue;

        std.debug.print(
            "{s}\n",
            .{line},
        );
    }
}

pub fn main() !void {
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    defer _ = gpa.deinit();

    const allocator = gpa.allocator();

    const input =
        try aoc.readFileAlloc(
            allocator,
            "input/day01.txt",
        );
    defer allocator.free(input);

    const t = aoc.timer();

    try solve(
        allocator,
        input,
    );

    std.debug.print(
        "Elapsed: {} us\n",
        .{t.read() / 1000},
    );
}
