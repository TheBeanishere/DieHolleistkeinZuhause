if (collision_point(mouse_x, mouse_y, self, false, false)){
	if (mouse_check_button_pressed(mb_left)){
		click += 1
	}
}
if (click > 2){
	instance_destroy(self)
}
x = obj_camera.xTo + 640
y = obj_camera.yTo + 360