if (transanim = spr_office_manimo_leave){
	obj_c_manimo.stage = 1
	transanim = noone
	sprite_index = spr_office_manimo
}

if (transanim = spr_office_manimo_enter){
	transanim = noone
	obj_c_manimo.stage = 6
	sprite_index = spr_office_manimo_stand
}