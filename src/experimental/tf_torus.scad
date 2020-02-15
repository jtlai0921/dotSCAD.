use <rotate_p.scad>;

function tf_torus(size, point, radius, angle = [360, 360], twist = 0) =
    let(
        xlen = size[0],
        ylen = size[1],
        x = point[0],        
        y = point[1],
        R = radius[0],
        r = radius[1],
        A = angle[0],
        a = angle[1],
        ya_step = a / xlen,
        za_step = A / ylen,
        twa_step = twist / ylen,
        ya = 180 - x * ya_step + twa_step * y,
        za = za_step * y
    ) 
    rotate_p([r * cos(ya) + R + r, 0, r * sin(ya)], za);