function scr_point_in_circle(px, py, cx, cy, radius){
	return (sqr(px-cx) + sqr(py-cy)) <= sqr(radius);
}