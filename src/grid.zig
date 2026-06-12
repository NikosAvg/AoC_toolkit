pub const Point = struct {
    x: i32,
    y: i32,

    pub fn add(
        self: Point,
        other: Point,
    ) Point {
        return .{
            .x = self.x + other.x,
            .y = self.y + other.y,
        };
    }
};

pub const dirs4 = [_]Point{
    .{ .x = 0, .y = -1 },
    .{ .x = 1, .y = 0 },
    .{ .x = 0, .y = 1 },
    .{ .x = -1, .y = 0 },
};

pub const dirs8 = [_]Point{
    .{ .x = -1, .y = -1 },
    .{ .x = 0, .y = -1 },
    .{ .x = 1, .y = -1 },
    .{ .x = -1, .y = 0 },
    .{ .x = 1, .y = 0 },
    .{ .x = -1, .y = 1 },
    .{ .x = 0, .y = 1 },
    .{ .x = 1, .y = 1 },
};
