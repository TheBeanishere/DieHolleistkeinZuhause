if (transanim = spr_office_joetube_enter){
	transanim = noone
	sprite_index = spr_office_joetube
}

if (transanim = spr_office_joetube_leave){
	transanim = noone
	obj_c_joetube.stage = 1
	if (global.camera = 5){	
		scr_camerastatic()
	}
	sprite_index = spr_office_joetube
}