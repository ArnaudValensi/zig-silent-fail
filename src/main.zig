const std = @import("std");

// Remove the `!` and the code works.
pub fn CreateType() !type {
    return struct {};
}

const MyType = CreateType();

const TestType = struct {
    my_type: MyType,
};

pub fn init() TestType {
    return .{
        .my_type = undefined,
    };
}

pub fn main() anyerror!void {
    _ = init();
}
