const std = @import("std");

pub fn part1(
    allocator: std.mem.Allocator,
    input: []const u8,
) !u64 {
    _ = allocator;
    _ = input;

    return 0;
}

pub fn part2(
    allocator: std.mem.Allocator,
    input: []const u8,
) !u64 {
    _ = allocator;
    _ = input;

    return 0;
}

test "example" {
    const allocator =
        std.testing.allocator;

    const input =
        \\1000
        \\2000
        \\3000
    ;

    try std.testing.expectEqual(
        @as(u64, 0),
        try part1(
            allocator,
            input,
        ),
    );
}
