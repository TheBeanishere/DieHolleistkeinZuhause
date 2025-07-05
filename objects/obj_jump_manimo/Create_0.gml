if (obj_c_manimo.mirror){
	image_xscale = 1.15
}else{
	image_xscale = -1.15
}
image_yscale = 1.15

shake = false


audio_play_sound(sfx_manimo_kill_2, 1, false, 1.3, 0, 0.9)

if (global.cameraflipped){
	obj_camerabutton.transanim = spr_camera_flip_down
	obj_camerabutton.image_index = 0
	audio_play_sound(sfx_cam_down, 1, false, 0.2)
	global.cameraflipped = false
}