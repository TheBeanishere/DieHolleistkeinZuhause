if (transanim = spr_office_door_close){
	obj_office.doorleft = true
	sprite_index = spr_office_door_shut
	transanim = noone
}
if (transanim = spr_office_door_off){
	obj_office.doorleft = false
	sprite_index = spr_office_door_open
	transanim = noone
}