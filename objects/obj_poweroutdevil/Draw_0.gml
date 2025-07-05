if (active && !global.cameraflipped){
	draw_set_colour(c_black)
	draw_set_alpha(dark)
	draw_rectangle(-335, 0, 1615, 800, false)
	draw_set_colour(c_white)
	draw_set_alpha(1)
	if (!instance_exists(obj_jumpscare)){
		draw_self()
	}
}