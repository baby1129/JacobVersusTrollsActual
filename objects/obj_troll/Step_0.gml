var troll_angle = point_direction(x,y, obj_player.x, obj_player.y)
var vector_x = lengthdir_x(move_speed, troll_angle)
var vector_y = lengthdir_y(move_speed, troll_angle)


//commented_out while testing.
/*
if (distance_to_object(obj_player) > 32) {
	move_towards_point(obj_player.x, obj_player.y, move_speed);
	
}
else {
	var movex = x-xprevious
	var movey = y-xprevious
	obj_player.hp -= 1
	move_towards_point(movex,movey, move_speed)
}
*/


update_repel()
move_and_collide(vector_x + knock_x, vector_y + knock_y, obj_player);


var dx = vector_x + knock_x
var dy = vector_y + knock_y

if (is_undefined(move_and_collide)) {
	//x-axis collision pushed back
	x +=dx;
	if (place_meeting(x,y,obj_player)) {
		x -= vector_x;
		while (!place_meeting(x+sign(vector_x), y, obj_player)) {
			x+=sign(vector_x);
			vector_x = 0;
		}
	y += vector_y;
	if (place_meeting(x,y, obj_player)) {
		y -= vector_y
		while(!place_meeting(x, y + sign(vector_y), obj_player)) {
			y += sign(vector_y)
			vector_y = 0
		} 
		
	}
		
	}
}

//image_angle = point_direction(x, y, obj_player.x, obj_player.y);

//could use alarm implementation or procedular drag, as the enemy gets closer to the player, the movement slows.

