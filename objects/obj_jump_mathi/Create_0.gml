if (obj_c_mathi.stage = 9){
	image_xscale = -1.15
}else{
	image_xscale = 1.15
}
image_yscale = 1.15

shake = false

if (global.cameraflipped){
	obj_camerabutton.transanim = spr_camera_flip_down
	obj_camerabutton.image_index = 0
	audio_play_sound(sfx_cam_down, 1, false, 0.2)
	global.cameraflipped = false
}