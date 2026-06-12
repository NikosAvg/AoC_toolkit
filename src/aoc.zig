const std = @import("std");

pub fn readInput(
    allocator: std.mem.Allocator,
    day: u8,
) ![]u8 {
    var path_buf: [64]u8 = undefined;

    const path = try std.fmt.bufPrint(
        &path_buf,
        "input/day{d:0>2}.txt",
        .{day},
    );

    return std.fs.cwd().readFileAlloc(
        allocator,
        path,
        std.math.maxInt(usize),
    );
}

pub fn startTimer() std.time.Timer {
    return std.time.Timer.start()
        catch unreachable;
}

pub fn printResult(
    part: u8,
    result: anytype,
) void {
    std.debug.print(
        "Part {}: {}\n",
        .{ part, result },
    );
}
