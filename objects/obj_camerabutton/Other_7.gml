if (transanim = spr_camera_flip_up){
	global.cameraflipped = true
	obj_camstatic.image_alpha = 1
}
if (transanim != noone){
	transanim = noone
	sprite_index = spr_camera
}