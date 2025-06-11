if (obj_game.AI_manimo > 0){
	if (obj_c_manimo.mirror){
		image_xscale = -1
		x = 1615
	}else{
		image_xscale = 1
		x = -335
	}
	if (obj_c_manimo.stage = 5){
		if (obj_c_manimo.mirror){
			if (obj_door_right.transanim = spr_office_door_close && transanim = noone){
				transanim = spr_office_manimo_leave
				image_index = 0
			}
		}else{
			if (obj_door_left.transanim = spr_office_door_close && transanim = noone){
				transanim = spr_office_manimo_leave
				image_index = 0
			}
		}
	}
	if (transanim != noone){
		sprite_index = transanim
	}

}