use <rotate_p.scad>;
use <experimental/tf_y_twist.scad>;

/*
    size: The size of a rectangle.
    point: A point in the rectangle.
    radius: sphere radius.
    angle: arc angle.
    twist: The number of degrees of through which the rectangle is twisted.
*/
function tf_ring(size, point, radius, angle = 360, twist = 0) = 
    let(
        yleng = size[1],
        a_step = angle / yleng,
        twisted = tf_y_twist(size, point, twist)
    )
    rotate_p([radius + twisted[0], 0, twisted[2]], a_step * twisted[1]);