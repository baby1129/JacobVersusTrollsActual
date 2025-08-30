// Ammo be like.
if ammo > 0
{
	var _bullet = instance_create_layer(self.x, self.y, "Instances", obj_bullet);
	ammo -= 1;
	
	with (_bullet){
	direction = obj_player.image_angle;
	image_angle = obj_player.image_angle;
	speed = obj_player.bullet_speed;
};
}
