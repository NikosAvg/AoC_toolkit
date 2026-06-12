const std = @import("std");
const aoc = @import("aoc.zig");

const day01 = @import("days/day01.zig");

pub fn main() !void {
    var gpa =
        std.heap.GeneralPurposeAllocator(.{}){};
    defer _ = gpa.deinit();

    const allocator =
        gpa.allocator();

    var args =
        std.process.args();

    _ = args.next();

    const day_arg =
        args.next() orelse {
        std.debug.print(
            "Usage: zig build run -- 1\n",
            .{},
        );
        return;
    };

    const day =
        try std.fmt.parseInt(
            u8,
            day_arg,
            10,
        );

    const input =
        try aoc.readInput(
            allocator,
            day,
        );
    defer allocator.free(input);

    switch (day) {
        1 => {
            const timer =
                aoc.startTimer();

            const p1 =
                try day01.part1(
                    allocator,
                    input,
                );

            const p2 =
                try day01.part2(
                    allocator,
                    input,
                );

            aoc.printResult(
                1,
                p1,
            );

            aoc.printResult(
                2,
                p2,
            );

            std.debug.print(
                "Time: {} μs\n",
                .{timer.read() / 1000},
            );
        },

        else => {
            std.debug.print(
                "Day not implemented\n",
                .{},
            );
        },
    }
}
