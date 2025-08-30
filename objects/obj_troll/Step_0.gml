
//move_towards_point(obj_player.x, obj_player.y, move_speed);

var _target_x = obj_player.x;
var _target_y = obj_player.y;

var _hor = clamp(_target_x - x, 1, -1);
var _ver = clamp(_target_y - y, 1, -1);
move_and_collide(_hor * move_speed, _ver * move_speed, obj_troll, undefined, undefined, undefined, move_speed, move_speed);

image_angle = point_direction(x, y, obj_player.x, obj_player.y);