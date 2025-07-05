if (obj_game.AI_stitcher > 0 && obj_office.powerleft > 0){
	if (obj_cameras.offsetx > 200){
		x = obj_camera.xTo - 200
	}else if (obj_cameras.offsetx < 0){
		x = obj_camera.xTo
	}else{
		x = obj_camera.xTo - obj_cameras.offsetx
	}
	y = obj_camera.yTo
	if (movetime > 0){
		movetime -= obj_game.AI_stitcher
	}else if (sprite_index = spr_cameras_stitcher_shock){
		if (shocktime > 0){
			shocktime -= 1
		}else{
			sprite_index = spr_cameras_stitcher
			movetime =  24000
			shocktime = 63
			scr_camerastatic()
		}
	}else{
		if (obj_o_stitcher.image_speed != 1){
			sprite_index = spr_cameras_stitcher_attack
			active = true
			scr_camerastatic()
			obj_o_stitcher.image_index = 0
			audio_play_sound(sfx_stitcher, 1, false)
			obj_o_stitcher.image_speed = 1
		}
	}
}