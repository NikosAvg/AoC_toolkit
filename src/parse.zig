const std = @import("std");

pub fn parseInt(
    comptime T: type,
    s: []const u8,
) !T {
    return std.fmt.parseInt(
        T,
        std.mem.trim(u8, s, " "),
        10,
    );
}

pub fn parseInts(
    allocator: std.mem.Allocator,
    line: []const u8,
) !std.ArrayList(i64) {
    var result = std.ArrayList(i64).init(
        allocator,
    );

    var it = std.mem.tokenizeAny(
        u8,
        line,
        " ,",
    );

    while (it.next()) |token| {
        try result.append(
            try parseInt(i64, token),
        );
    }

    return result;
}
