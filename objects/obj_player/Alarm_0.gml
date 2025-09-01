if (hp <= 0) {
	instance_destroy()
}
hp -= hits/30 // divide by 60 is kind of like giving invis frames if you think about it. 
alarm[0] = 60
