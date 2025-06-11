if (transanim = spr_office_mathi_enter){
	transanim = noone
	sprite_index = spr_office_mathi_stand
}

if (transanim = spr_office_mathi_leave){
	transanim = noone
	obj_c_mathi.stage = 3
	if (global.camera = 3){
		scr_camerastatic()
	}
	sprite_index = spr_office_mathi
}