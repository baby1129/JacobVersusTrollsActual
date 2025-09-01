
// keyboard checks 
var _hor = ((keyboard_check(ord("D")) - keyboard_check(ord("A"))) * move_speed);
var _ver = ((keyboard_check(ord("S")) - keyboard_check(ord("W"))) * move_speed);


//move wrap sprite 
move_wrap(true, true, sprite_width);
//move and collide
update_repel();
move_and_collide((_hor + knock_x), (_ver + knock_y), obj_troll, 4, undefined, undefined, move_speed, move_speed);
image_angle = point_direction(x, y, mouse_x, mouse_y);


	
//Problems have solutions. 
/*
if (place_meeting(x+sprite_width, y+sprite_height, obj_troll)) {
	x += sign(lengthdir_x(move_speed,image_angle))
	y += sign(lengthdir_y(move_speed,image_angle))
	
}
*/