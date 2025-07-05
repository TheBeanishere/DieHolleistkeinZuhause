x = obj_camera.xTo
y = obj_camera.yTo
if (collision_point(mouse_x, mouse_y, self, false, false) && !instance_exists(obj_jumpscare) && transanim = noone){
	if (!touched){
		touched = true
		if (global.cameraflipped){
			transanim = spr_camera_flip_down
			image_index = 0
			audio_play_sound(sfx_cam_down, 1, false, 0.2)
			global.cameraflipped = false
		}else{
			transanim = spr_camera_flip_up
			audio_play_sound(sfx_cam_up, 1, false, 0.2)
			image_index = 0
		}
	}
}else{
	touched = false
}

if (transanim != noone){
	sprite_index = transanim
}