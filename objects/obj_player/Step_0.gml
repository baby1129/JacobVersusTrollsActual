var _hor = (keyboard_check(ord("D")) - keyboard_check(ord("A")));
var _ver = (keyboard_check(ord("S")) - keyboard_check(ord("W")));

move_and_collide((_hor * move_speed), (_ver * move_speed), obj_player, undefined, undefined, undefined, move_speed, move_speed);

image_angle = point_direction(x, y, mouse_x, mouse_y);