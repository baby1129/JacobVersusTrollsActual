function Light_Beam_Effect(){
var erase_surface = surface_create(room_width, room_height)
surface_set_target(erase_surface)
draw_clear_alpha(c_black,0)
draw_self()

gpu_set_blendmode_ext_sepalpha(bm_zero, bm_one,bm_zero,bm_inv_src_alpha)

draw_set_alpha(1)


draw_sprite_ext(Sprite10, -1, obj_player.x , obj_player.y, 1,1, obj_player.image_angle, c_yellow, 1)
draw_sprite_ext(diff_anchor_light, -1, Beam_Light.x, Beam_Light.y, 1, 1, Beam_Light.image_angle, c_white, 1)


gpu_set_blendmode(bm_normal)
gpu_set_colorwriteenable(true,true,true,true)
surface_reset_target()

draw_surface(erase_surface,0,0)
}