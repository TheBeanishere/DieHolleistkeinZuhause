x = obj_camera.xTo
y = obj_camera.yTo
if (collision_point(mouse_x, mouse_y, self, false, false) && !instance_exists(obj_jumpscare)){
	if (!touched){
		touched = true
		global.cameraflipped = !global.cameraflipped
	}
}else{
	touched = false
}