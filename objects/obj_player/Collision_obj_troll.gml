if (knock_cd <= 0 && other.knock_cd <= 0) {
	var multi = 9
	apply_repel(other.x, other.y, multi)
	with (other) {
		apply_repel(other.x, other.y, multi)
	}
	
	knock_cd = 8
	other.knock_cd = 8
	
	
	var dir = point_direction(other.x, other.y, x, y)
	var separation =  2; //overlap fixer upper.
	x += lengthdir_x(separation, dir)
	y += lengthdir_y(separation, dir)
	with (other) {
		x += lengthdir_x(separation, dir + 180);
		y += lengthdir_y(separation, dir +180);
	}
}
//add the amount of collisions up by 1.
hits++