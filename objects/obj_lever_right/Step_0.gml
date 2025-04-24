if (shut){
	image_index = 6
}else{
	image_index = 0
}
if (!global.cameraflipped){
	if (collision_point(mouse_x, mouse_y, self, false, false)){
		if (mouse_check_button(mb_left)){
			clicked = true
			if (mouse_y < 320){
				image_index = 0
			}else if (mouse_y > 590){
				image_index = 6
			}else if (mouse_y > 540){
				image_index = 5
			}else if (mouse_y > 490){
				image_index = 4
			}else if (mouse_y > 450){
				image_index = 3
			}else if (mouse_y > 410){
				image_index = 2
			}else if (mouse_y > 320){
				image_index = 1
			}
			if (mouse_y > 550 && !shut){
				shut = true
				obj_door_right.transanim = spr_office_door_close
				obj_door_right.image_index = 0
			}
			if (mouse_y < 320 && shut){
				shut = false
				obj_door_right.transanim = spr_office_door_off
				obj_door_right.image_index = 0
			}
		}
		if (mouse_check_button_released(mb_left)){
			if (clicked){
				clicked = false
				if (shut){
					if (!obj_office.doorright && obj_door_right.transanim = noone){
						obj_door_right.transanim = spr_office_door_close
						obj_door_right.image_index = 0
					}
				}else{
					if (obj_office.doorright && obj_door_right.transanim = noone){
						obj_door_right.transanim = spr_office_door_off
						obj_door_right.image_index = 0
					}
				}
			}
		}
	}
}
