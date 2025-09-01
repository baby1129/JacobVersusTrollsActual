function general_collision(colliding_object){
	//this function is only for the general case.
	//If the player is hitting something that should not be inside of him (no homo)
	
	
	
	//current x and y 
	var target_x = x
	var target_y = y
	
	
	//Push bro back
	x = xprevious
	y = yprevious
	
	//this is used to calculate the distance of where the object should be with relation to where it is.
	var disx = abs(target_x - x)
	var disy = abs(target_y - y)
	
	//this loop checks continously if the objects are still colliding to set the player back from the object
	repeat (disx) {
		if !place_meeting(x + sign(target_x - x), y, colliding_object) 
	{
			x+=sign(target_x - x)
	}
	
	}
	
	repeat (disy) {
		if !place_meeting(x , y + sign(target_y - y), colliding_object) 
	{
			y+=sign(target_y - y)
	}
	
	}

}
//Repel function that can take the current state of 2 objects and repel them accordingly.
function apply_repel(obj_x, obj_y, multi_factor) {
 var force_angle = point_direction(obj_x,obj_y,x,y)
 knock_x += lengthdir_x(multi_factor,force_angle)
 knock_y += lengthdir_y(multi_factor, force_angle)
}

function update_repel(){
	//WHY THE FUCK DOES INHERITANCE NOT WORK IN THIS FUCKING ENGINE!!!!

	if (knock_cd > 0) {
	knock_cd--
	}
	knock_x *= knock_drag
	knock_y  *= knock_drag
	
	if(abs(knock_x) < knock_zero)
	{
	knock_x = 0
	}
	if(abs(knock_y) < knock_zero)
	{
	knock_y = 0	
	}
	
}