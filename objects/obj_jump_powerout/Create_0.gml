image_blend = #401010
image_xscale = 1.5
image_yscale = 1.5

timer = 180

audio_play_sound(sfx_mathi_kill, 1, false, 1.3, 0, 0.5)

shake = true
shakeness = 0

if (global.cameraflipped){
	obj_camerabutton.transanim = spr_camera_flip_down
	obj_camerabutton.image_index = 0
	audio_play_sound(sfx_cam_down, 1, false, 0.2)
	global.cameraflipped = false
}