function glow_effect() {
	var prev_blend = gpu_get_blendmode()
	gpu_set_blendmode(bm_add)
	
	//blurred sprites
	draw_sprite_ext(Sprite6_G1, image_index, x-5, y, image_xscale, image_yscale, Beam_Light.image_angle, make_color_rgb(250, 250, 0), 0.1); 

	draw_sprite_ext(Sprite6_G2, image_index, x+5, y, image_xscale, image_yscale, Beam_Light.image_angle, make_color_rgb(255, 255, 0), 0.1); 
	
	gpu_set_blendmode(prev_blend);
}