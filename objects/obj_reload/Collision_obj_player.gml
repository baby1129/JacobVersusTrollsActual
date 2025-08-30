
obj_player.ammo = obj_player.max_ammo;

//var _player_pos_x = obj_player.x;
//var _player_pos_y = obj_player.y;

var _new_ammo_x = random_range(64, room_width);
var _new_ammo_y = random_range(64, room_height);

instance_create_layer(_new_ammo_x, _new_ammo_y, "Instances", obj_reload);
instance_destroy(self);
