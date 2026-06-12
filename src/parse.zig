const std = @import("std");

pub fn int(
    comptime T: type,
    text: []const u8,
) !T {
    return std.fmt.parseInt(
        T,
        std.mem.trim(u8, text, " "),
        10,
    );
}

pub fn lines(
    text: []const u8,
) std.mem.SplitIterator(u8, .scalar) {
    return std.mem.splitScalar(
        u8,
        text,
        '\n',
    );
}
