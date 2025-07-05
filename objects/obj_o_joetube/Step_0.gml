if (obj_game.AI_joetube > 0 && obj_office.powerleft > 0){
	if (obj_c_joetube.left){
		image_xscale = 1
		x = -335
		if (transanim = spr_office_joetube_enter && (obj_lever_left.shut || obj_door_left.transanim != noone)){
			image_speed = 0
			image_alpha = 0
		}else{
			image_speed = 1
			image_alpha = 1
		}
	}else{
		image_xscale = -1
		x = 1615
		if (transanim = spr_office_joetube_enter && (obj_lever_right.shut || obj_door_right.transanim != noone)){
			image_speed = 0
			image_alpha = 0
		}else{
			image_speed = 1
			image_alpha = 1
		}
	}
	if (transanim != noone){
		sprite_index = transanim
	}
}