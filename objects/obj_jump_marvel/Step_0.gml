obj_camera.xTo = lerp(obj_camera.xTo, 0, 0.5)
obj_camera.yTo = lerp(obj_camera.yTo, 80, 0.5)

if (image_index = 2){
	shake = true
}

if (shake){
	fadeout += 0.015
	shakeness += 0.3
	var _shakex = irandom_range(-shakeness, shakeness)
	var _shakey = irandom_range(-shakeness, shakeness)
	obj_camera.xTo = _shakex
	obj_camera.yTo = _shakey
}