pub fn HashSet(
    comptime T: type,
) type {
    return std.AutoHashMap(
        T,
        void,
    );
}

var map =
    std.StringHashMap(u64)
    .init(allocator);
var pq =
    std.PriorityQueue(
        Node,
        void,
        Node.lessThan,
    ).init(
        allocator,
        {},
    );

var queue =
    std.ArrayList(Node)
    .init(allocator);

var head: usize = 0;

while (head < queue.items.len) {
    const current =
        queue.items[head];
    head += 1;
}

pub const Result = union(enum) {
    int: i64,
    uint: u64,
    string: []const u8,
};
