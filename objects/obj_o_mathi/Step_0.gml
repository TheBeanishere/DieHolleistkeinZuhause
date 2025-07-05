if (obj_game.AI_satan > 0 && obj_office.powerleft > 0){
	if (obj_c_mathi.stage = 9){
		image_xscale = -1
		x = 1615
	}else{
		image_xscale = 1
		x = -335
	}
	if (obj_c_mathi.stage > 7 && !obj_c_mathi.light){
		if (obj_c_mathi.stage = 9){
			if (obj_door_right.transanim = spr_office_door_close && transanim = noone && sprite_index != spr_office_mathi_stand){
				transanim = spr_office_mathi_leave
				image_index = 0
			}
		}else{
			if (obj_door_left.transanim = spr_office_door_close && transanim = noone && sprite_index != spr_office_mathi_stand){
				transanim = spr_office_mathi_leave
				image_index = 0
			}
		}
	}
	if (transanim != noone){
		sprite_index = transanim
	}

}