x = obj_camera.xTo
y = obj_camera.yTo
if (sprite_index = spr_office_liru){
	frameoffset = 0
}else{
	frameoffset = 7
}

if (floor(image_index) = 19 - frameoffset){
	if (!audio_is_playing(sfx_liru_grab)){
		audio_play_sound(sfx_liru_grab, 1, false, 0.6)
	}
}

if (floor(image_index) = 24 - frameoffset){
	if (!audio_is_playing(sfx_liru_dash)){
		audio_play_sound(sfx_liru_dash, 1, false)
	}
}