// keyboard checks 
var _hor = (keyboard_check(ord("D")) - keyboard_check(ord("A")));
var _ver = (keyboard_check(ord("S")) - keyboard_check(ord("W")));

//move wrap sprite 
move_wrap(true, true, sprite_width);

//move and collide
move_and_collide((_hor * move_speed), (_ver * move_speed), obj_troll, undefined, undefined, undefined, move_speed, move_speed);

image_angle = point_direction(x, y, mouse_x, mouse_y);