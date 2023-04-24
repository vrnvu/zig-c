const std = @import("std");

export fn sum_array(array_ptr: [*]const i32, len: usize) i32 {
    return sumArray(array_ptr[0..len]);
}

fn sumArray(array: []const i32) i32 {
    var sum: i32 = 0;
    for (array) |a| {
        sum += a;
    }
    return sum;
}

pub const _start = void;