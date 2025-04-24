if (!global.cameraflipped){
	if (!obj_office.doorleft){
		if (collision_point(mouse_x, mouse_y, self, false, false)){
			if (mouse_check_button_pressed(mb_left)){
				clicked = true
			}
			if (clicked){
				if (mouse_check_button(mb_left)){
					lightalpha = 0.6
					obj_office.lightleft = true
					randomize()
					flicker = random_range(0, 0.05)
				}else{
					clicked = false
				}
			}else{
				obj_office.lightleft = false
				lightalpha = lerp(lightalpha, 1, 0.05)
			}
		}else{
			lightalpha = lerp(lightalpha, 1, 0.05)
			clicked = false
		}
	}else{
		clicked = false
		obj_office.lightleft = false
		lightalpha = lerp(lightalpha, 1, 0.05)
	}
}else{
	clicked = false
	obj_office.lightleft = false
	lightalpha = lerp(lightalpha, 1, 0.05)
}

if (transanim != noone){
	sprite_index = transanim
}