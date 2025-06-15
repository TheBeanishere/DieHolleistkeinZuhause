if (sprite_index = spr_pravi_explode && fuse <= 0){
	movetimer = 38400
	fuse = 600
	stare = 0
	array_push(obj_office.disabledcams, cam)
	obj_office.powerleft -= (obj_office.powermax/10)
	sprite_index = spr_pravi
}