function Light_Chud(target, brightness, glow_distance, x_offset = 0, y_offset = 0, light_color = c_white){
//lighting code attempt

//x_offset and y_offset determine where within the object the light source is.


//draw_set_color(c_white)


// Create Surface, make it the tarket and make it additive blending.
var light_surf = surface_create(room_width, room_height)
surface_set_target(light_surf)
draw_clear_alpha(c_white,0)

//this just makes the lighting gradient, might remove it later. 
gpu_set_blendmode(bm_add)
with(target)
	{
		var fidelity = 64 //how many circles are created
		var fade_account = 5 // how distant the circles are between eachother
		//Decides what portion is being lit. 
		draw_set_alpha(clamp((brightness /fidelity) * lerp(1,2, fidelity/ fade_account), 0, 1)) //clamp limits the range you can go between 0 and 1 
		//lerp finds a specific position between the start and end values the position is the 3rd paramater as a position
		
		//Creates Gradients by making a bunch of circles throughout the object. 
		
		for(var i = 0; i < fidelity; i++)
		{
			//The drawn circles are repeated throughout the object, deciding the fade effect.
		   draw_circle(Beam_Light.x + x_offset*power(i,3), Beam_Light.y + y_offset*power(i,3), (glow_distance / fidelity) * (i+1), false)

		}
		
}
// Reset the drawing stuff now please. 
draw_set_alpha(1)
gpu_set_blendmode(bm_normal)
surface_reset_target()

//Surf_1 creation. 
var cutout_surf = surface_create(room_width, room_height)
surface_set_target(cutout_surf)
draw_clear_alpha(c_white,1)

//settings for surf 1 
gpu_set_blendmode(bm_subtract)
//comment this out to make the original sprite show
gpu_set_fog(false, light_color, 0,0)

//implementation

with(target)
{
	draw_self()
}
gpu_set_fog(false, c_white, 0, 0)
surface_reset_target()

//put cutout on light 
surface_set_target(light_surf)
draw_surface(cutout_surf,0,0)
gpu_set_blendmode(bm_normal)
surface_reset_target()

//Put  final lighting surfface onto room and destroy  both surfaces.
draw_surface(light_surf, 0,0)
surface_free(light_surf)
surface_free(cutout_surf)




}