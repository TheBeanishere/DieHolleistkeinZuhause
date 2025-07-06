if (global.cameraflipped){
	if (obj_game.AI_roachy > 0 && obj_office.powerleft > 0){
		draw_self()
		draw_set_alpha(greenfade)
		draw_set_colour(c_green)
		draw_rectangle(bbox_left, bbox_bottom, bbox_right, bbox_top, false)
		draw_set_colour(c_white)
		draw_set_alpha(1)
	}
}