if (transanim = spr_office_manimo_leave){
	transanim = noone
	sprite_index = spr_office_manimo
}

if (transanim = spr_office_manimo_enter){
	transanim = noone
	obj_c_manimo.stage = 6
	obj_c_manimo.killtimer = 240
	sprite_index = spr_office_manimo_stand
}