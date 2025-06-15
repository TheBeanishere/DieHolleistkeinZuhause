if (!global.cameraflipped){
	if (obj_mouse.x < 380 + xTo){
		xTo = lerp(xTo, -335, 0.1)
	}else if (obj_mouse.x > 900 + xTo){
		xTo = lerp(xTo, 335, 0.1)
	}else{
		xTo = lerp(xTo, 0, 0.1)
	}

	if (obj_mouse.y < 200 + xTo){
		yTo = lerp(yTo, 0, 0.1)
	}else if (obj_mouse.y > 520 + yTo){
		yTo = lerp(yTo, 80, 0.1)
	}else{
		yTo = lerp(yTo, 40, 0.1)
	}
}

xTo = clamp(xTo, -335, 335)
yTo = clamp(yTo, 0, 80)

camera_set_view_pos(view_camera[0], xTo, yTo);