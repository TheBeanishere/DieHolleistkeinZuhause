if (obj_c_marvel.location = 9){
	image_xscale = 1.15
}else{
	image_xscale = -1.15
}
image_yscale = 1.15

shake = false

fadeout = 0

shakeness = 5

audio_play_sound(sfx_kill_marvel, 1, false)

if (global.cameraflipped){
	obj_camerabutton.transanim = spr_camera_flip_down
	obj_camerabutton.image_index = 0
	audio_play_sound(sfx_cam_down, 1, false, 0.2)
	global.cameraflipped = false
}
if (!obj_game.jumpscareness){
	room_goto(MENU_gameover)
	global.killedby = 6
}