usage = doorleft + doorright + lightleft + lightright + global.cameraflipped

if (keyboard_check_pressed(vk_space)){
	global.cameraflipped = !global.cameraflipped
}