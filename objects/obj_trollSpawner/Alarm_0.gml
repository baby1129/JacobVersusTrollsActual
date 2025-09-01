
//add if total enemies !over this number check
//change this?
var _x_spawn_pos = (random_range(64, 2662));
var _y_spawn_pos = (random_range(64, 1430));

for (var i = 0; i < wave_number; i++){
var _pick_side = irandom_range(0, 3);
	if _pick_side == 0{
		_x_spawn_pos = ((obj_player.x) - VIEWPORT_WIDTH); 
	instance_create_layer(_x_spawn_pos, _y_spawn_pos, "Instances", obj_troll);
	}
	if _pick_side == 1{
		_x_spawn_pos = ((obj_player.x) + VIEWPORT_WIDTH);
	instance_create_layer(_x_spawn_pos, _y_spawn_pos, "Instances", obj_troll);
	}
	if _pick_side == 2{
		_y_spawn_pos = ((obj_player.y) - VIEWPORT_HEIGHT);
		instance_create_layer(_x_spawn_pos, _y_spawn_pos, "Instances", obj_troll);
	}
	if _pick_side == 3{
		_y_spawn_pos = ((obj_player.y) + VIEWPORT_HEIGHT);
		instance_create_layer(_x_spawn_pos, _y_spawn_pos, "Instances", obj_troll);
	}
}

wave_number += 1;

alarm[0] = 60;