obj_camera.xTo = 0
obj_camera.yTo = 40

timer -= 1

if (timer <= 0){
	room_goto(MENU_custom)
}

if (timer mod 3 = 0){
	image_index = irandom_range(0, 9)
}

if (shake){
	shakeness = lerp(shakeness, 200, 0.05)
	var _shakex = irandom_range(-shakeness, shakeness)
	var _shakey = irandom_range(-shakeness, shakeness)
	obj_camera.xTo = _shakex
	obj_camera.yTo = _shakey
}