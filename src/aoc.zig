const std = @import("std");

pub fn readFileAlloc(
    allocator: std.mem.Allocator,
    path: []const u8,
) ![]u8 {
    return std.fs.cwd().readFileAlloc(
        allocator,
        path,
        std.math.maxInt(usize),
    );
}

pub fn readLines(
    allocator: std.mem.Allocator,
    path: []const u8,
) !std.ArrayList([]const u8) {
    const content = try readFileAlloc(
        allocator,
        path,
    );

    var lines = std.ArrayList([]const u8).init(allocator);

    var it = std.mem.splitScalar(
        u8,
        content,
        '\n',
    );

    while (it.next()) |line| {
        try lines.append(
            std.mem.trimRight(
                u8,
                line,
                "\r",
            ),
        );
    }

    return lines;
}

pub fn timer() std.time.Timer {
    return std.time.Timer.start() catch unreachable;
}
