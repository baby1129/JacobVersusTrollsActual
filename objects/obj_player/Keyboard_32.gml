var _bullet = instance_create_layer(self.x, self.y, "Instances", obj_bullet);
with (_bullet){
	direction = obj_player.image_angle;
	image_angle = obj_player.image_angle;
	speed = obj_player.bullet_speed;
};